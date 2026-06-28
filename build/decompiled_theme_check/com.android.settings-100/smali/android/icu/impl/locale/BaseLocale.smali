.class public final Landroid/icu/impl/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/BaseLocale$Cache;,
        Landroid/icu/impl/locale/BaseLocale$Key;
    }
.end annotation


# static fields
.field private static final CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

.field private static final JDKIMPL:Z = false

.field public static final ROOT:Landroid/icu/impl/locale/BaseLocale;

.field public static final SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile transient _hash:I

.field private _language:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/icu/impl/locale/BaseLocale$Cache;

    invoke-direct {v0}, Landroid/icu/impl/locale/BaseLocale$Cache;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/BaseLocale;->CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

    const-string v0, ""

    .line 24
    invoke-static {v0, v0, v0, v0}, Landroid/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/BaseLocale;->ROOT:Landroid/icu/impl/locale/BaseLocale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    if-eqz p1, :cond_0

    .line 35
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 38
    invoke-static {p2}, Landroid/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_2

    .line 41
    invoke-static {p3}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    :cond_2
    if-eqz p4, :cond_3

    .line 48
    invoke-static {p4}, Landroid/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/BaseLocale$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/BaseLocale;
    .locals 1

    .line 64
    new-instance v0, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/icu/impl/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object p0, Landroid/icu/impl/locale/BaseLocale;->CACHE:Landroid/icu/impl/locale/BaseLocale$Cache;

    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/BaseLocale;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 90
    :cond_0
    instance-of v1, p1, Landroid/icu/impl/locale/BaseLocale;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 93
    :cond_1
    check-cast p1, Landroid/icu/impl/locale/BaseLocale;

    .line 94
    invoke-virtual {p0}, Landroid/icu/impl/locale/BaseLocale;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/icu/impl/locale/BaseLocale;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    return-object p0
.end method

.method public getScript()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    return-object p0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 134
    iget v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    if-nez v0, :cond_4

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 137
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 138
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 140
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    .line 141
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 143
    :goto_2
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    mul-int/lit8 v2, v2, 0x1f

    .line 144
    iget-object v3, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 146
    :goto_3
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    mul-int/lit8 v0, v0, 0x1f

    .line 147
    iget-object v2, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 149
    :cond_3
    iput v0, p0, Landroid/icu/impl/locale/BaseLocale;->_hash:I

    :cond_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "language="

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_2

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "script="

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "region="

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v1, "variant="

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object p0, p0, Landroid/icu/impl/locale/BaseLocale;->_variant:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
