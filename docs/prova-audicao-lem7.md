---
title: Lista de Músicas para a Prova de Audição
---

{% for item in site.data.lem7 %}
<div class="card mb-3" style="max-width: 540px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="/media/{{ item.imagem }}" width="150px">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">{{ item.nome }}</h5>
        <h6 class="card-subtitle mb-2 text-body-secondary">{{ item.titulo }}</h6>
        <p class="card-text">{{ item.texto }}</p>
      </div>
  <div class="card-body">
    <a href="{{ item.youtube }}" class="card-link">Youtube</a>
    <a href="{{ item.baixar }}" class="card-link">Baixar</a>
  </div>
      </div>
  </div>
</div>
{% endfor %}
