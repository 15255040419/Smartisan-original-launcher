.class public Landroid/icu/util/CaseInsensitiveString;
.super Ljava/lang/Object;
.source "CaseInsensitiveString.java"


# instance fields
.field private folded:Ljava/lang/String;

.field private hash:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-void
.end method

.method private static foldCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFolded()V
    .locals 1

    .line 35
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/util/CaseInsensitiveString;->foldCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 65
    :cond_1
    instance-of v1, p1, Landroid/icu/util/CaseInsensitiveString;

    if-eqz v1, :cond_2

    .line 66
    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    .line 67
    check-cast p1, Landroid/icu/util/CaseInsensitiveString;

    .line 68
    invoke-direct {p1}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    .line 69
    iget-object p0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/icu/util/CaseInsensitiveString;->getFolded()V

    .line 81
    iget v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Landroid/icu/util/CaseInsensitiveString;->folded:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    .line 85
    :cond_0
    iget p0, p0, Landroid/icu/util/CaseInsensitiveString;->hash:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Landroid/icu/util/CaseInsensitiveString;->string:Ljava/lang/String;

    return-object p0
.end method
