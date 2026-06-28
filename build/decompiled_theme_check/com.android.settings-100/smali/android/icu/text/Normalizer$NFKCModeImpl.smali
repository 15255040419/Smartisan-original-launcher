.class final Landroid/icu/text/Normalizer$NFKCModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFKCModeImpl"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 165
    new-instance v0, Landroid/icu/text/Normalizer$ModeImpl;

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$ModeImpl;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer$NFKCModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Landroid/icu/text/Normalizer$ModeImpl;
    .locals 1

    .line 164
    sget-object v0, Landroid/icu/text/Normalizer$NFKCModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method
