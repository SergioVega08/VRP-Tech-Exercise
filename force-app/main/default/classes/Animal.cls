public inherited sharing class Animal {

    global String animalType;

    public Animal(String animalType) {
        this.animalType = animalType;
    }

    public void makeNoise() {
        switch on animalType {
          when 'Lion' {
            roar();
          }
          when 'Cat' {
            meow();
          }
          when 'Horse' {
            neigh();
          }
          when 'Alligator' {
            hiss();
          }
          when 'Bear' {
            growl();
          }
          when 'Cow' {
            moo();
          }
          when 'Dog' {
            bark();
          }
        }
    }

    public void move() {
        switch on animalType {
          when 'Lion' {
            run();
          }
          when 'Cat' {
            walk();
            }
          when 'Horse' {
            slide();
          }
          when 'Alligator' {
            hiss();
            }
          when 'Bear' {
            walk();
          }
          when 'Cow' {
            walk();
            }
          when 'Dog' {
            run();
          }
        }
    }

    public void swim() {
        switch on animalType {
            when 'Lion' {
                doSwim();
            }
            when 'Cat' {
                // ignore, cannot swim
            }
            when 'Horse' {
                // ignore, cannot swim
            }
            when 'Alligator' {
                doSwim();
            }
            when 'Bear' {
                doSwim();
            }
            when 'Cow' {
                // ignore, cannot swim
            }
            when 'Dog' {
                doSwim();
            }
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