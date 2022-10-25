/// Generated file. Do not edit.
///
/// Locales: 1
/// Strings: 21
///
/// Built on 2022-10-25 at 18:51 UTC


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
	late final I18nPcpGruposDeRecursosListPt list = I18nPcpGruposDeRecursosListPt._(_root);
	late final I18nPcpGruposDeRecursosFormPt form = I18nPcpGruposDeRecursosFormPt._(_root);
}

// Path: pcp.recursos
class I18nPcpRecursosPt {
	I18nPcpRecursosPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	late final I18nPcpRecursosListPt list = I18nPcpRecursosListPt._(_root);
	late final I18nPcpRecursosFormPt form = I18nPcpRecursosFormPt._(_root);
}

// Path: pcp.shared
class I18nPcpSharedPt {
	I18nPcpSharedPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	late final I18nPcpSharedEmptyListPt emptyList = I18nPcpSharedEmptyListPt._(_root);
	String get searchHint => 'Pesqusar por nome ou palavra-chave';
	String get back => 'Voltar';
	String get create => 'Criar';
	String get updade => 'Atualizar';
}

// Path: pcp.gruposDeRecursos.list
class I18nPcpGruposDeRecursosListPt {
	I18nPcpGruposDeRecursosListPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get title => 'Busca de grupos de recursos';
	String get addItem => 'Criar novo grupo';
	String get lastTitle => 'Últimos grupos acessados';
}

// Path: pcp.gruposDeRecursos.form
class I18nPcpGruposDeRecursosFormPt {
	I18nPcpGruposDeRecursosFormPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	late final I18nPcpGruposDeRecursosFormTitlesPt titles = I18nPcpGruposDeRecursosFormTitlesPt._(_root);
	late final I18nPcpGruposDeRecursosFormLabelsPt labels = I18nPcpGruposDeRecursosFormLabelsPt._(_root);
	late final I18nPcpGruposDeRecursosFormMessagePt message = I18nPcpGruposDeRecursosFormMessagePt._(_root);
}

// Path: pcp.recursos.list
class I18nPcpRecursosListPt {
	I18nPcpRecursosListPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get title => 'Busca de recursos';
	String get addItem => 'Criar novo recurso';
	String get lastTitle => 'Últimos recursos acessados';
}

// Path: pcp.recursos.form
class I18nPcpRecursosFormPt {
	I18nPcpRecursosFormPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	late final I18nPcpRecursosFormTitlesPt titles = I18nPcpRecursosFormTitlesPt._(_root);
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
	String get create => 'Novo grupo de recurso';
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

// Path: pcp.gruposDeRecursos.form.message
class I18nPcpGruposDeRecursosFormMessagePt {
	I18nPcpGruposDeRecursosFormMessagePt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get success => 'Grupo de recurso criado com sucesso.';
}

// Path: pcp.recursos.form.titles
class I18nPcpRecursosFormTitlesPt {
	I18nPcpRecursosFormTitlesPt._(this._root);

	final I18nPt _root; // ignore: unused_field

	// Translations
	String get create => 'Novo recurso';
	String get edit => 'Editar recurso';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on I18nPt {
	Map<String, dynamic> _buildFlatMap() {
		return <String, dynamic>{
			'pcp.gruposDeRecursos.list.title': 'Busca de grupos de recursos',
			'pcp.gruposDeRecursos.list.addItem': 'Criar novo grupo',
			'pcp.gruposDeRecursos.list.lastTitle': 'Últimos grupos acessados',
			'pcp.gruposDeRecursos.form.titles.create': 'Novo grupo de recurso',
			'pcp.gruposDeRecursos.form.titles.edit': 'Editar grupo de recurso',
			'pcp.gruposDeRecursos.form.labels.codigo': 'Código',
			'pcp.gruposDeRecursos.form.labels.descricao': 'Descrição',
			'pcp.gruposDeRecursos.form.labels.tipoDeRecurso': 'Tipo de Recurso',
			'pcp.gruposDeRecursos.form.message.success': 'Grupo de recurso criado com sucesso.',
			'pcp.recursos.list.title': 'Busca de recursos',
			'pcp.recursos.list.addItem': 'Criar novo recurso',
			'pcp.recursos.list.lastTitle': 'Últimos recursos acessados',
			'pcp.recursos.form.titles.create': 'Novo recurso',
			'pcp.recursos.form.titles.edit': 'Editar recurso',
			'pcp.shared.emptyList.normal': '5',
			'pcp.shared.emptyList.search': 'Não há resultados para pesquisa',
			'pcp.shared.emptyList.recent': 'Não há itens recentes',
			'pcp.shared.searchHint': 'Pesqusar por nome ou palavra-chave',
			'pcp.shared.back': 'Voltar',
			'pcp.shared.create': 'Criar',
			'pcp.shared.updade': 'Atualizar',
		};
	}
}
