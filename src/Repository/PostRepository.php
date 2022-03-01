<?php

namespace App\Repository;

use App\Entity\Post;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Post|null find($id, $lockMode = null, $lockVersion = null)
 * @method Post|null findOneBy(array $criteria, array $orderBy = null)
 * @method Post[]    findAll()
 * @method Post[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PostRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Post::class);
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function add(Post $entity, bool $flush = true): void
    {
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function remove(Post $entity, bool $flush = true): void
    {
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }


    // /**
    //  * @return Post[] Returns an array of Post objects
    //  */
    public function findDistinctDates()
    {
        return $this->createQueryBuilder('p')
             ->select('YEAR(p.date_time) as yearDT, MONTH(p.date_time) as monthDT')
            // ->andWhere('p.exampleField = :val')
            // ->setParameter('val', $value)
            ->groupBy('yearDT')
            ->addGroupBy('monthDT')
            // ->orderBy('p.id', 'ASC')
            // ->setMaxResults(10)
            ->getQuery()
            ->getResult();
    }
    
    // /**
    //  * @return Post[] Returns an array of Post objects
    //  */
    public function findByDate($params)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('YEAR(p.date_time) = :valYear')
            ->andWhere('MONTH(p.date_time) = :valMonth')
            ->setParameter('valYear', $params['year'])
            ->setParameter('valMonth', $params['month'])
            ->orderBy('p.date_time', 'DESC')
            // ->setMaxResults(10)
            ->getQuery()
            ->getResult();
    }

    /*
    public function findOneBySomeField($value): ?Post
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
