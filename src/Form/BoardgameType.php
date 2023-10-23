<?php

namespace App\Form;

use App\Entity\Boardgame;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class BoardgameType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('title')
            ->add('players')
            ->add('time')
            ->add('age')
            ->add('released')
            ->add('description')
            ->add('content')
            ->add('categories')
            ->add('picture', FileType::class, [
                'required' => false,
                'mapped' => false
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Boardgame::class,
        ]);
    }
}
