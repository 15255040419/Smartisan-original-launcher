.class public final enum Landroid/icu/text/Normalizer2$Mode;
.super Ljava/lang/Enum;
.source "Normalizer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/Normalizer2$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/Normalizer2$Mode;

.field public static final enum COMPOSE:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

.field public static final enum FCD:Landroid/icu/text/Normalizer2$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 78
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const/4 v1, 0x0

    const-string v2, "COMPOSE"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    .line 86
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const/4 v2, 0x1

    const-string v3, "DECOMPOSE"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

    .line 98
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const/4 v3, 0x2

    const-string v4, "FCD"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->FCD:Landroid/icu/text/Normalizer2$Mode;

    .line 107
    new-instance v0, Landroid/icu/text/Normalizer2$Mode;

    const/4 v4, 0x3

    const-string v5, "COMPOSE_CONTIGUOUS"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/Normalizer2$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/Normalizer2$Mode;

    .line 70
    sget-object v5, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->DECOMPOSE:Landroid/icu/text/Normalizer2$Mode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->FCD:Landroid/icu/text/Normalizer2$Mode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->COMPOSE_CONTIGUOUS:Landroid/icu/text/Normalizer2$Mode;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/Normalizer2$Mode;->$VALUES:[Landroid/icu/text/Normalizer2$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/Normalizer2$Mode;
    .locals 1

    .line 70
    const-class v0, Landroid/icu/text/Normalizer2$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/Normalizer2$Mode;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/Normalizer2$Mode;
    .locals 1

    .line 70
    sget-object v0, Landroid/icu/text/Normalizer2$Mode;->$VALUES:[Landroid/icu/text/Normalizer2$Mode;

    invoke-virtual {v0}, [Landroid/icu/text/Normalizer2$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/Normalizer2$Mode;

    return-object v0
.end method
