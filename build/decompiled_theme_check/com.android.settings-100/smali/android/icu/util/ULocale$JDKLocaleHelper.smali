.class final Landroid/icu/util/ULocale$JDKLocaleHelper;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JDKLocaleHelper"
.end annotation


# static fields
.field private static final JAVA6_MAPDATA:[[Ljava/lang/String;

.field private static eDISPLAY:Ljava/lang/Object; = null

.field private static eFORMAT:Ljava/lang/Object; = null

.field private static hasLocaleCategories:Z = false

.field private static hasScriptsAndUnicodeExtensions:Z = false

.field private static mForLanguageTag:Ljava/lang/reflect/Method;

.field private static mGetDefault:Ljava/lang/reflect/Method;

.field private static mGetExtension:Ljava/lang/reflect/Method;

.field private static mGetExtensionKeys:Ljava/lang/reflect/Method;

.field private static mGetScript:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

.field private static mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

.field private static mSetDefault:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "ja_JP_JP"

    const-string v2, "ja_JP"

    const-string v3, "calendar"

    const-string v4, "japanese"

    const-string v5, "ja"

    .line 3886
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-string v3, "no_NO_NY"

    const-string v4, "nn_NO"

    const-string v5, "nn"

    filled-new-array {v3, v4, v1, v1, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string/jumbo v3, "th_TH_TH"

    const-string/jumbo v5, "th_TH"

    const-string v6, "numbers"

    const-string/jumbo v7, "thai"

    const-string/jumbo v8, "th"

    filled-new-array {v3, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    .line 3896
    :try_start_0
    const-class v0, Ljava/util/Locale;

    const-string v3, "getScript"

    move-object v6, v1

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    .line 3897
    const-class v0, Ljava/util/Locale;

    const-string v3, "getExtensionKeys"

    move-object v6, v1

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    .line 3898
    const-class v0, Ljava/util/Locale;

    const-string v3, "getExtension"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    .line 3899
    const-class v0, Ljava/util/Locale;

    const-string v3, "getUnicodeLocaleKeys"

    move-object v6, v1

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    .line 3900
    const-class v0, Ljava/util/Locale;

    const-string v3, "getUnicodeLocaleAttributes"

    move-object v6, v1

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    .line 3901
    const-class v0, Ljava/util/Locale;

    const-string v3, "getUnicodeLocaleType"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    .line 3902
    const-class v0, Ljava/util/Locale;

    const-string v3, "forLanguageTag"

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    .line 3904
    sput-boolean v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3913
    :catch_0
    :try_start_1
    const-class v0, Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 3914
    array-length v3, v0

    move v6, v2

    :goto_0
    if-ge v6, v3, :cond_1

    aget-object v7, v0, v6

    .line 3915
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "java.util.Locale$Category"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_1
    if-nez v7, :cond_2

    goto :goto_4

    .line 3923
    :cond_2
    const-class v0, Ljava/util/Locale;

    const-string v3, "getDefault"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    .line 3924
    const-class v0, Ljava/util/Locale;

    const-string/jumbo v3, "setDefault"

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v7, v5, v2

    const-class v6, Ljava/util/Locale;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    const-string v0, "name"

    .line 3926
    move-object v3, v1

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v7, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3927
    invoke-virtual {v7}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    .line 3928
    array-length v5, v3

    :goto_2
    if-ge v2, v5, :cond_5

    aget-object v6, v3, v2

    .line 3929
    move-object v7, v1

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "DISPLAY"

    .line 3930
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3931
    sput-object v6, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    goto :goto_3

    :cond_3
    const-string v8, "FORMAT"

    .line 3932
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3933
    sput-object v6, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3936
    :cond_5
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    if-eqz v0, :cond_7

    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    if-nez v0, :cond_6

    goto :goto_4

    .line 3940
    :cond_6
    sput-boolean v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    :goto_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault(Landroid/icu/util/ULocale$Category;)Ljava/util/Locale;
    .locals 5

    .line 4185
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 4186
    sget-boolean v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v1, :cond_2

    .line 4188
    sget-object v1, Landroid/icu/util/ULocale$3;->$SwitchMap$android$icu$util$ULocale$Category:[I

    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_0

    move-object p0, v2

    goto :goto_0

    .line 4193
    :cond_0
    sget-object p0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_0

    .line 4190
    :cond_1
    sget-object p0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    :goto_0
    if-eqz p0, :cond_2

    .line 4198
    :try_start_0
    sget-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetDefault:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4262
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4264
    :try_start_0
    new-instance v0, Landroid/icu/util/ULocale$JDKLocaleHelper$1;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale$JDKLocaleHelper$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    goto :goto_0

    .line 4274
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static hasLocaleCategories()Z
    .locals 1

    .line 3955
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    return v0
.end method

.method public static isOriginalDefaultLocale(Ljava/util/Locale;)Z
    .locals 7

    .line 4241
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    const/4 v1, 0x1

    const-string/jumbo v2, "user.variant"

    const-string/jumbo v3, "user.country"

    const-string/jumbo v4, "user.language"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 4244
    :try_start_0
    sget-object v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4249
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4250
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4251
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "user.script"

    .line 4252
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    return v1

    :catch_0
    return v5

    .line 4254
    :cond_1
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4255
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4256
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Landroid/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    return v1
.end method

.method public static setDefault(Landroid/icu/util/ULocale$Category;Ljava/util/Locale;)V
    .locals 5

    .line 4212
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories:Z

    if-eqz v0, :cond_2

    .line 4214
    sget-object v0, Landroid/icu/util/ULocale$3;->$SwitchMap$android$icu$util$ULocale$Category:[I

    invoke-virtual {p0}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    move-object p0, v2

    goto :goto_0

    .line 4219
    :cond_0
    sget-object p0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eFORMAT:Ljava/lang/Object;

    goto :goto_0

    .line 4216
    :cond_1
    sget-object p0, Landroid/icu/util/ULocale$JDKLocaleHelper;->eDISPLAY:Ljava/lang/Object;

    :goto_0
    if-eqz p0, :cond_2

    .line 4224
    :try_start_0
    sget-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->mSetDefault:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    aput-object p1, v0, v1

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static toLocale(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 1

    .line 3963
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale7(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toLocale6(Landroid/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toLocale6(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 7

    .line 4164
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 4165
    :goto_0
    sget-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_3

    .line 4166
    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4167
    :cond_0
    sget-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v4, v3, v2

    aget-object v4, v4, v6

    if-eqz v4, :cond_2

    .line 4168
    aget-object v3, v3, v2

    aget-object v3, v3, v6

    invoke-virtual {p0, v3}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4169
    sget-object v4, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4170
    sget-object p0, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object p0, p0, v2

    aget-object v0, p0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4174
    :cond_2
    aget-object p0, v3, v2

    aget-object v0, p0, v1

    .line 4179
    :cond_3
    :goto_1
    new-instance p0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 4180
    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getLanguageScriptCountryVariant()[Ljava/lang/String;

    move-result-object p0

    .line 4181
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object v2, p0, v6

    aget-object p0, p0, v5

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static toLocale7(Landroid/icu/util/ULocale;)Ljava/util/Locale;
    .locals 5

    .line 4124
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4125
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4132
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 4145
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4148
    :try_start_0
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->mForLanguageTag:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez v2, :cond_2

    .line 4158
    new-instance v2, Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    .line 4152
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 4150
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 1

    .line 3959
    sget-boolean v0, Landroid/icu/util/ULocale$JDKLocaleHelper;->hasScriptsAndUnicodeExtensions:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale7(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale6(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static toULocale6(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 5

    .line 4105
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4107
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 4109
    :goto_0
    sget-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 4110
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4111
    new-instance v0, Landroid/icu/impl/LocaleIDParser;

    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v1, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 4112
    sget-object v1, Landroid/icu/util/ULocale$JDKLocaleHelper;->JAVA6_MAPDATA:[[Ljava/lang/String;

    aget-object v3, v1, v2

    const/4 v4, 0x2

    aget-object v3, v3, v4

    aget-object v1, v1, v2

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/icu/impl/LocaleIDParser;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4117
    :cond_2
    :goto_1
    new-instance v1, Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale$1;)V

    move-object p0, v1

    :goto_2
    return-object p0
.end method

.method private static toULocale7(Ljava/util/Locale;)Landroid/icu/util/ULocale;
    .locals 14

    .line 3967
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3969
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3970
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 3976
    :try_start_0
    sget-object v3, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetScript:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3978
    sget-object v5, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtensionKeys:Ljava/lang/reflect/Method;

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 3979
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_8

    .line 3980
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    move-object v9, v6

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Character;

    .line 3981
    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v11

    const/16 v12, 0x75

    if-ne v11, v12, :cond_6

    .line 3986
    sget-object v10, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleAttributes:Ljava/lang/reflect/Method;

    move-object v11, v4

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v10, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 3987
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3988
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 3989
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3990
    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3996
    :cond_1
    sget-object v10, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleKeys:Ljava/lang/reflect/Method;

    move-object v11, v4

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v10, p0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 3997
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3998
    sget-object v12, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetUnicodeLocaleType:Ljava/lang/reflect/Method;

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v11, v13, v7

    invoke-virtual {v12, p0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_2

    const-string/jumbo v13, "va"

    .line 4000
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 4002
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    move-object v2, v12

    goto :goto_2

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    if-nez v9, :cond_5

    .line 4005
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 4007
    :cond_5
    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4012
    :cond_6
    sget-object v11, Landroid/icu/util/ULocale$JDKLocaleHelper;->mGetExtension:Ljava/lang/reflect/Method;

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v10, v12, v7

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_0

    if-nez v9, :cond_7

    .line 4015
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 4017
    :cond_7
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    move-object v6, v4

    move-object v9, v6

    :cond_9
    const-string v5, "no"

    .line 4034
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "NO"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "NY"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v0, "nn"

    const-string v2, ""

    .line 4040
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4042
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0x5f

    if-lez v0, :cond_b

    .line 4043
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4044
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4047
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 4048
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4049
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 4053
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 4054
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4056
    :cond_d
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4057
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz v6, :cond_12

    .line 4062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4063
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4064
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x2d

    .line 4065
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4067
    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    if-nez v9, :cond_11

    .line 4070
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    move-object v9, v1

    .line 4072
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "attribute"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    if-eqz v9, :cond_16

    const/16 v0, 0x40

    .line 4076
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4078
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4079
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4080
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4082
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v8, :cond_14

    .line 4084
    invoke-static {v2}, Landroid/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4086
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v1, "yes"

    :cond_13
    invoke-static {v2, v1}, Landroid/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    if-eqz v7, :cond_15

    const/16 v3, 0x3b

    .line 4090
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_15
    move v7, v8

    .line 4094
    :goto_5
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 4095
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4096
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4100
    :cond_16
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/icu/util/ULocale$1;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 4025
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 4023
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
