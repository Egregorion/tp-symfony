<?php 

namespace App\Service;

use App\Repository\CategoryRepository;

class Menu 
{
    private $repo;

    public function __construct(CategoryRepository $repo)
    {
        $this->repo = $repo;
    }

    public function getMenuCategories() 
    {
        $categories = $this->repo->findAll();

        return $categories;
    }
}