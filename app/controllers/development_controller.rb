class DevelopmentController < ApplicationController
  def index
    @pages = CutawayPage.all
    @languages = Language.all

    @site_warnings = [check_empty_cutaway_pages, check_pages, check_styles, check_navs, check_footers,
                      check_index_page]
    @seo_warnings = []
  end

  def faq
  end

  private

  # Проверка ошибок по сайту
  # Метод должен возвращать массив в формате ["Описание ошибки", [Объект с ошибкой, ..., Объект с ошибкой]]

  def check_empty_cutaway_pages # Поиск страниц, без языковых версий
    empty_pages = []

    CutawayPage.all.each do |page|
      empty_pages << page if page.versions == [] || page.versions.nil?
    end

    return unless empty_pages.size > 0

    ['Следующие страницы не имеют языковых версий, и не отображаются на сайте:', empty_pages]
  end

  def check_pages # Проверка есть ли у сайта страницы
    return unless CutawayPage.all.size < 1

    ['Не существует ни одной страницы, сайт пуст!']
  end

  def check_styles # Проверка есть ли стили у сайта
    return unless Style.all.size < 1

    ['Не подключено ни одной таблицы CSS стилей!']
  end

  def check_navs # Проверка есть ли у сайта навбары
    return unless Nav.where(active: true).size < 1

    ['Не подключено ни одного Nav!']
  end

  def check_footers # Проверка есть ли у сайта футер
    return unless Footer.where(active: true).size < 1

    ['Не подключено ни одного Footer!']
  end

  def check_index_page # Проверка есть ли у сайта главная страница
    return unless CutawayPage.where(index: true).size < 1

    ['Не выбрана главная страница сайта!']
  end

  #=========================

  # Проверка SEO ошибок
  def check_sitemap # Наличие сайтмап
  end

  def check_robots_txt # Наличие роботс.тхт
  end
  #=========================
end
