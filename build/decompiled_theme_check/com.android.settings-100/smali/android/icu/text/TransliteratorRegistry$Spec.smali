.class Landroid/icu/text/TransliteratorRegistry$Spec;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spec"
.end annotation


# instance fields
.field private isNextLocale:Z

.field private isSpecLocale:Z

.field private nextSpec:Ljava/lang/String;

.field private res:Landroid/icu/impl/ICUResourceBundle;

.field private scriptName:Ljava/lang/String;

.field private spec:Ljava/lang/String;

.field private top:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v0

    .line 114
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 116
    aget v1, v1, v2

    invoke-static {v1}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 123
    :cond_0
    iput-boolean v2, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 124
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 127
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    const-string v1, "android/icu/impl/data/icudt60b/translit"

    .line 128
    invoke-static {v1, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    .line 130
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 142
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    return-void
.end method

.method private setupNext()V
    .locals 3

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    .line 159
    iget-boolean v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    .line 161
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 165
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object p0
.end method

.method public getBundle()Ljava/util/ResourceBundle;
    .locals 2

    .line 207
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTop()Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    return-object p0
.end method

.method public hasFallback()Z
    .locals 0

    .line 146
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocale()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    return p0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 186
    iget-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 187
    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    .line 188
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .locals 2

    .line 150
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 153
    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    :cond_1
    return-void
.end method
