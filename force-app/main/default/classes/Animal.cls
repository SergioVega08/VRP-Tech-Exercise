public inherited sharing class Animal {

    global String animalType;

    public Animal(String animalType) {
        this.animalType = animalType;
    }

    public void makeNoise() {
        if (animalType == 'Lion') {
            roar();
        }
        else if (animalType == 'Cat') {
            meow();
        }
        else if (animalType == 'Horse') {
            neigh();
        }
        else if (animalType == 'Alligator') {
            hiss();
        }
        else if (animalType == 'Bear') {
            growl();
        }
        else if (animalType == 'Cow') {
            moo();
        }
        else if (animalType == 'Dog') {
            bark();
        }
    }

    public void move() {
        if (animalType == 'Lion') {
            run();
        }
        else if (animalType == 'Cat') {
            walk();
        }
        else if (animalType == 'Horse') {
            slide();
        }
        else if (animalType == 'Alligator') {
            hiss();
        }
        else if (animalType == 'Bear') {
            walk();
        }
        else if (animalType == 'Cow') {
            walk();
        }
        else if (animalType == 'Dog') {
            run();
        }
    }

    public void swim() {
        if (animalType == 'Lion') {
            doSwim();
        }
        else if (animalType == 'Cat') {
            // ignore, cannot swim
        }
        else if (animalType == 'Horse') {
            // ignore, cannot swim
        }
        else if (animalType == 'Alligator') {
            doSwim();
        }
        else if (animalType == 'Bear') {
            doSwim();
        }
        else if (animalType == 'Cow') {
            // ignore, cannot swim
        }
        else if (animalType == 'Dog') {
            doSwim();
        }
    }

    public void roar() {
        // roaring behavior here
    }

    public void meow() {
        // meowing behavior here
    }

    public void neigh() {
        // neighing behavior here
    }

    public void hiss() {
        // hissing behavior here
    }

    public void growl() {
        // growling behavior here
    }

    public void moo() {
        // mooing behavior here
    }

    public void bark() {
        // barking behavior here
    }

    public void run() {
        // running behavior here
    }

    public void walk() {
        // walking behavior here
    }

    public void slide() {
        // sliding behavior here
    }

    public void doSwim() {
        // swimming behavior here
    }


}