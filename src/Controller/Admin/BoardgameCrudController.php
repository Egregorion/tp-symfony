<?php

namespace App\Controller\Admin;

use App\Entity\Boardgame;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Form\Type\TextEditorType;

class BoardgameCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Boardgame::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            TextField::new('title'),
            TextField::new('players'),
            IntegerField::new('time'),
            TextField::new('age'),
            DateField::new('released'),
            TextEditorField::new('description'),
            TextEditorField::new('content'),
            AssociationField::new('categories'),
            ImageField::new('picture')
                ->setBasePath('uploads/')
                ->setUploadDir('public/uploads')
                ->setRequired(false)
        ];
    }
    
}
