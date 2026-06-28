.class public Landroid/icu/util/GenderInfo;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/GenderInfo$Cache;,
        Landroid/icu/util/GenderInfo$ListGenderStyle;,
        Landroid/icu/util/GenderInfo$Gender;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

.field private static neutral:Landroid/icu/util/GenderInfo;


# instance fields
.field private final style:Landroid/icu/util/GenderInfo$ListGenderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 223
    new-instance v0, Landroid/icu/util/GenderInfo;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V

    sput-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    .line 261
    new-instance v0, Landroid/icu/util/GenderInfo$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/GenderInfo$Cache;-><init>(Landroid/icu/util/GenderInfo$1;)V

    sput-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-void
.end method

.method static synthetic access$000()Landroid/icu/util/GenderInfo;
    .locals 1

    .line 32
    sget-object v0, Landroid/icu/util/GenderInfo;->neutral:Landroid/icu/util/GenderInfo;

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    sget-object v0, Landroid/icu/util/GenderInfo;->genderInfoCache:Landroid/icu/util/GenderInfo$Cache;

    invoke-virtual {v0, p0}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/GenderInfo;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/GenderInfo;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/icu/util/GenderInfo$Gender;",
            ">;)",
            "Landroid/icu/util/GenderInfo$Gender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    .line 171
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 172
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    .line 174
    :cond_1
    sget-object v0, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$ListGenderStyle:[I

    iget-object p0, p0, Landroid/icu/util/GenderInfo;->style:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {p0}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_d

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_5

    if-eq p0, v0, :cond_2

    .line 208
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    .line 201
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/GenderInfo$Gender;

    .line 202
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    if-eq p1, v0, :cond_3

    .line 203
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    .line 206
    :cond_4
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    .line 180
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/GenderInfo$Gender;

    .line 181
    sget-object v5, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$Gender:[I

    invoke-virtual {v4}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v2, :cond_9

    if-eq v4, v3, :cond_7

    if-eq v4, v0, :cond_6

    goto :goto_0

    .line 195
    :cond_6
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    :cond_7
    if-eqz p1, :cond_8

    .line 190
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    if-eqz v1, :cond_a

    .line 184
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object p0

    :cond_a
    move p1, v2

    goto :goto_0

    :cond_b
    if-eqz v1, :cond_c

    .line 198
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    goto :goto_1

    :cond_c
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    :goto_1
    return-object p0

    .line 176
    :cond_d
    sget-object p0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    return-object p0
.end method

.method public varargs getListGender([Landroid/icu/util/GenderInfo$Gender;)Landroid/icu/util/GenderInfo$Gender;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/GenderInfo;->getListGender(Ljava/util/List;)Landroid/icu/util/GenderInfo$Gender;

    move-result-object p0

    return-object p0
.end method
