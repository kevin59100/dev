import { Component } from '@angular/core';
import { FormControl, ReactiveFormsModule } from '@angular/forms';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable()
@Component({
  selector: 'app-body',
  standalone: true,
  imports: [ReactiveFormsModule],
  templateUrl: './body.component.html',
  styleUrl: './body.component.css'
})
export class BodyComponent {
  public nomProduit:any;
  public codeBarre:any;
  public info:any;
  public picture:any;
  public package:any;
  public allergeneElement:any;
  public ingredient:any;
  public nova:any;
  public nutriscore:any;
  public oil:any;
  public packaging:any;
  public champ = new FormControl('');
  private configUrl = 'https://world.openfoodfacts.org/api/v2/product/';


constructor(private http: HttpClient){

}
afficherValeur(){
  return this.http.get(this.configUrl + this.champ.value)
  .subscribe((data:any) => {
    this.nomProduit=data.product.product_name;
    this.codeBarre=data.product._id;
    this.info=data.product.brands;
    this.picture=data.product.image_front_url;
    this.allergeneElement=data.product.allergens;
    this.ingredient=data.product.ingredients_text;
    this.nova=data.product.nova_groups;
    this.nutriscore=data.product.nutriscore_grade;
    const element = data.product.ingredients.find(
      (element: { id: string }) => element.id === 'en:palm-oil'
    );
    this.oil = element ? 'Présente' : 'Non présente';
    this.packaging=data.product.packaging;
  });
}
}