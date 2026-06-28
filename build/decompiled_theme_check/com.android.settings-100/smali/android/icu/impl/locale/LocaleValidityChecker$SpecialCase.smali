.class final enum Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
.super Ljava/lang/Enum;
.source "LocaleValidityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/LocaleValidityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SpecialCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

.field public static final enum subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 123
    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v1, 0x0

    const-string v2, "normal"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v2, 0x1

    const-string v3, "anything"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v3, 0x2

    const-string/jumbo v4, "reorder"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v4, 0x3

    const-string v5, "codepoints"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v5, 0x4

    const-string/jumbo v6, "subdivision"

    invoke-direct {v0, v6, v5}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    new-instance v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v6, 0x5

    const-string/jumbo v7, "rgKey"

    invoke-direct {v0, v7, v6}, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    .line 122
    sget-object v7, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    aput-object v7, v0, v1

    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->$VALUES:[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static get(Ljava/lang/String;)Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .locals 1

    const-string v0, "kr"

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object p0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->reorder:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_0
    const-string/jumbo v0, "vt"

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget-object p0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->codepoints:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_1
    const-string/jumbo v0, "sd"

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    sget-object p0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->subdivision:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_2
    const-string/jumbo v0, "rg"

    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    sget-object p0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->rgKey:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    :cond_3
    const-string/jumbo v0, "x0"

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 134
    sget-object p0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->anything:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0

    .line 136
    :cond_4
    sget-object p0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->normal:Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .locals 1

    .line 122
    const-class v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;
    .locals 1

    .line 122
    sget-object v0, Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->$VALUES:[Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/LocaleValidityChecker$SpecialCase;

    return-object v0
.end method
