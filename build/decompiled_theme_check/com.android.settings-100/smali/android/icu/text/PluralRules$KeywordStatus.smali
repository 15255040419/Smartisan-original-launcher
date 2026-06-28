.class public final enum Landroid/icu/text/PluralRules$KeywordStatus;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeywordStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PluralRules$KeywordStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

.field public static final enum UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 2369
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2375
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const/4 v2, 0x1

    const-string v3, "SUPPRESSED"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2381
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const/4 v3, 0x2

    const-string v4, "UNIQUE"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2387
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const/4 v4, 0x3

    const-string v5, "BOUNDED"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2393
    new-instance v0, Landroid/icu/text/PluralRules$KeywordStatus;

    const/4 v5, 0x4

    const-string v6, "UNBOUNDED"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/PluralRules$KeywordStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/text/PluralRules$KeywordStatus;

    .line 2363
    sget-object v6, Landroid/icu/text/PluralRules$KeywordStatus;->INVALID:Landroid/icu/text/PluralRules$KeywordStatus;

    aput-object v6, v0, v1

    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Landroid/icu/text/PluralRules$KeywordStatus;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->UNIQUE:Landroid/icu/text/PluralRules$KeywordStatus;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->BOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Landroid/icu/text/PluralRules$KeywordStatus;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->$VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 1

    .line 2363
    const-class v0, Landroid/icu/text/PluralRules$KeywordStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/PluralRules$KeywordStatus;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/PluralRules$KeywordStatus;
    .locals 1

    .line 2363
    sget-object v0, Landroid/icu/text/PluralRules$KeywordStatus;->$VALUES:[Landroid/icu/text/PluralRules$KeywordStatus;

    invoke-virtual {v0}, [Landroid/icu/text/PluralRules$KeywordStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PluralRules$KeywordStatus;

    return-object v0
.end method
