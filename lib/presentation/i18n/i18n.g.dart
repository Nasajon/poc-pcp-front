/// Generated file. Do not edit.
///
/// Locales: 1
/// Strings: 32
///
/// Built on 2022-11-22 at 14:18 UTC


// coverage:ignore-file
// ignore_for_file: type=lint


import 'package:flutter/widgets.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.pt;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.pt) // set locale
/// - Locale locale = AppLocale.pt.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.pt) // locale check
enum AppLocale with BaseAppLocale<I18nPt> {
	pt(languageCode: 'pt', build: I18nPt.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<I18nPt> build;
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, I18nPt> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class I18nPt implements BaseTranslations {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	I18nPt.build({PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: _cardinalResolver = cardinalResolver,
		  _ordinalResolver = ordinalResolver;

	/// Access flat map
	dynamic operator[](String key) => _flatMap[key];

	// Internal flat map initialized lazily
	late final Map<String, dynamic> _flatMap = _buildFlatMap();

	final PluralResolver? _cardinalResolver; // ignore: unused_field
	final PluralResolver? _ordinalResolver; // ignore: unused_field

	late final I18nPt _root = this; // ignore: unused_field

	// Translations
	late final I18nPcpPt pcp = I18nPcpPt._(_root);
}

// Path: pcp
class I18nPcpPt {
	I18nPcpPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	late final I18nPcpGruposDeRecursosPt gruposDeRecursos = I18nPcpGruposDeRecursosPt._(_root);
	late final I18nPcpRecursosPt recursos = I18nPcpRecursosPt._(_root);
	late final I18nPcpSharedPt shared = I18nPcpSharedPt._(_root);
}

// Path: pcp.gruposDeRecursos
class I18nPcpGruposDeRecursosPt {
	I18nPcpGruposDeRecursosPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get title => 'Grupos de recursos';
	late final I18nPcpGruposDeRecursosListPt list = I18nPcpGruposDeRecursosListPt._(_root);
	late final I18nPcpGruposDeRecursosFormPt form = I18nPcpGruposDeRecursosFormPt._(_root);
}

// Path: pcp.recursos
class I18nPcpRecursosPt {
	I18nPcpRecursosPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get title => 'Recursos';
	late final I18nPcpRecursosListPt list = I18nPcpRecursosListPt._(_root);
	late final I18nPcpRecursosFormPt form = I18nPcpRecursosFormPt._(_root);
}

// Path: pcp.shared
class I18nPcpSharedPt {
	I18nPcpSharedPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get back => 'Voltar';
	String get create => 'Criar';
	late final I18nPcpSharedEmptyListPt emptyList = I18nPcpSharedEmptyListPt._(_root);
	String get openApp => 'Abrir App';
	String get requiredFields => '*Campos obrigatórios';
	String get searchHint => 'Pesqusar por nome ou palavra-chave';
	String get updade => 'Atualizar';
}

// Path: pcp.gruposDeRecursos.list
class I18nPcpGruposDeRecursosListPt {
	I18nPcpGruposDeRecursosListPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get title => 'Busca de grupos de recursos';
	String get addItem => 'Criar grupo de recursos';
	String get lastTitle => 'Últimos grupos acessados';
}

// Path: pcp.gruposDeRecursos.form
class I18nPcpGruposDeRecursosFormPt {
	I18nPcpGruposDeRecursosFormPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	late final I18nPcpGruposDeRecursosFormTitlesPt titles = I18nPcpGruposDeRecursosFormTitlesPt._(_root);
	late final I18nPcpGruposDeRecursosFormLabelsPt labels = I18nPcpGruposDeRecursosFormLabelsPt._(_root);
	late final I18nPcpGruposDeRecursosFormMessagesPt messages = I18nPcpGruposDeRecursosFormMessagesPt._(_root);
}

// Path: pcp.recursos.list
class I18nPcpRecursosListPt {
	I18nPcpRecursosListPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get title => 'Busca de recursos';
	String get addItem => 'Criar recurso';
	String get lastTitle => 'Últimos recursos acessados';
}

// Path: pcp.recursos.form
class I18nPcpRecursosFormPt {
	I18nPcpRecursosFormPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	late final I18nPcpRecursosFormTitlesPt titles = I18nPcpRecursosFormTitlesPt._(_root);
	late final I18nPcpRecursosFormLabelsPt labels = I18nPcpRecursosFormLabelsPt._(_root);
	late final I18nPcpRecursosFormMessagesPt messages = I18nPcpRecursosFormMessagesPt._(_root);
}

// Path: pcp.shared.emptyList
class I18nPcpSharedEmptyListPt {
	I18nPcpSharedEmptyListPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get normal => '5';
	String get search => 'Não há resultados para pesquisa';
	String get recent => 'Não há itens recentes';
}

// Path: pcp.gruposDeRecursos.form.titles
class I18nPcpGruposDeRecursosFormTitlesPt {
	I18nPcpGruposDeRecursosFormTitlesPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get create => 'Criar grupo de recursos';
	String get edit => 'Editar grupo de recurso';
}

// Path: pcp.gruposDeRecursos.form.labels
class I18nPcpGruposDeRecursosFormLabelsPt {
	I18nPcpGruposDeRecursosFormLabelsPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get codigo => 'Código';
	String get descricao => 'Descrição';
	String get tipoDeRecurso => 'Tipo de Recurso';
}

// Path: pcp.gruposDeRecursos.form.messages
class I18nPcpGruposDeRecursosFormMessagesPt {
	I18nPcpGruposDeRecursosFormMessagesPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get success => 'Grupo de recurso criado com sucesso.';
}

// Path: pcp.recursos.form.titles
class I18nPcpRecursosFormTitlesPt {
	I18nPcpRecursosFormTitlesPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get create => 'Criar recurso';
	String get edit => 'Editar recurso';
}

// Path: pcp.recursos.form.labels
class I18nPcpRecursosFormLabelsPt {
	I18nPcpRecursosFormLabelsPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get codigo => 'Código*';
	String get nome => 'Nome*';
	String get grupoDeRecurso => 'Grupo de Recurso';
	String get tipoDeRecurso => 'Tipo';
	String get centroDeTrabalho => 'Centro de Trabalho';
	String get custoPorHora => 'Custo por hora';
}

// Path: pcp.recursos.form.messages
class I18nPcpRecursosFormMessagesPt {
	I18nPcpRecursosFormMessagesPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get success => 'Recurso criado com sucesso.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on I18nPt {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'pcp.gruposDeRecursos.title': 'Grupos de recursos',
			'pcp.gruposDeRecursos.list.title': 'Busca de grupos de recursos',
			'pcp.gruposDeRecursos.list.addItem': 'Criar grupo de recursos',
			'pcp.gruposDeRecursos.list.lastTitle': 'Últimos grupos acessados',
			'pcp.gruposDeRecursos.form.titles.create': 'Criar grupo de recursos',
			'pcp.gruposDeRecursos.form.titles.edit': 'Editar grupo de recurso',
			'pcp.gruposDeRecursos.form.labels.codigo': 'Código',
			'pcp.gruposDeRecursos.form.labels.descricao': 'Descrição',
			'pcp.gruposDeRecursos.form.labels.tipoDeRecurso': 'Tipo de Recurso',
			'pcp.gruposDeRecursos.form.messages.success': 'Grupo de recurso criado com sucesso.',
			'pcp.recursos.title': 'Recursos',
			'pcp.recursos.list.title': 'Busca de recursos',
			'pcp.recursos.list.addItem': 'Criar recurso',
			'pcp.recursos.list.lastTitle': 'Últimos recursos acessados',
			'pcp.recursos.form.titles.create': 'Criar recurso',
			'pcp.recursos.form.titles.edit': 'Editar recurso',
			'pcp.recursos.form.labels.codigo': 'Código*',
			'pcp.recursos.form.labels.nome': 'Nome*',
			'pcp.recursos.form.labels.grupoDeRecurso': 'Grupo de Recurso',
			'pcp.recursos.form.labels.tipoDeRecurso': 'Tipo',
			'pcp.recursos.form.labels.centroDeTrabalho': 'Centro de Trabalho',
			'pcp.recursos.form.labels.custoPorHora': 'Custo por hora',
			'pcp.recursos.form.messages.success': 'Recurso criado com sucesso.',
			'pcp.shared.back': 'Voltar',
			'pcp.shared.create': 'Criar',
			'pcp.shared.emptyList.normal': '5',
			'pcp.shared.emptyList.search': 'Não há resultados para pesquisa',
			'pcp.shared.emptyList.recent': 'Não há itens recentes',
			'pcp.shared.openApp': 'Abrir App',
			'pcp.shared.requiredFields': '*Campos obrigatórios',
			'pcp.shared.searchHint': 'Pesqusar por nome ou palavra-chave',
			'pcp.shared.updade': 'Atualizar',
		};
	}
}
