import { Component } from '@angular/core';
import { FormControl, ReactiveFormsModule } from '@angular/forms';
import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
@Injectable()
@Component({
  selector: 'app-header',
  standalone: true,
  imports: [ReactiveFormsModule],
  templateUrl: './header.component.html',
  styleUrl: './header.component.css'
})
export class HeaderComponent {
public photo:any;
public ingredient:any;
public allergeneElement:any;
public nova:any;
public nutriscore:any;
public oil:any;
public nomProduit:any;
public codeBarre:any;
public info:any;
public package:any;
public champ = new FormControl('');
private configUrl = 'https://world.openfoodfacts.org/api/v2/product/';


constructor(private http: HttpClient){

}
afficherValeur(){
  return this.http.get(this.configUrl + this.champ.value)
  .subscribe((data:any) => {
    this.nomProduit=data.product.product_name;
    this.codeBarre=data.product._id;
    this.info=data.product.brands
  })
}
}