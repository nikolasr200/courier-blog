<?php

namespace App\Controller;

use App\Entity\Category;
use App\Form\CategoryType;
use App\Repository\CategoryRepository;
use App\Repository\PostRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/site")
 */
class SiteController extends AbstractController
{

    private $queryParams = ['author', 'category', 'year', 'month'];
    /**
     * @Route("/", name="app_site_index", methods={"GET"})
     */
    public function index(Request $request, CategoryRepository $categoryRepository, PostRepository $postRepository): Response
    {

        $queryParams = $this->buildQuery($request);
        $distinctDates = array_map(function($elem) { return [$elem['yearDT'], \DateTime::createFromFormat('!m', $elem['monthDT'])->format('F')];}, 
                            $postRepository->findDistinctDates());

        return $this->render('site.html.twig', [
            'categories' => $categoryRepository->findAll(),
            'posts' => $postRepository->findBy($queryParams, ['date_time' => 'DESC']),
            'distinctDates' => $distinctDates
        ]);
    }


    private function buildQuery($request) {
        $returnArr = [];
        foreach($this->queryParams as $queryParam) {
            if(!empty($request->query->get($queryParam))) {
                $returnArr[$queryParam] = $request->query->get($queryParam);
            }
        }
        return $returnArr;
    }

}
