.class final Landroid/icu/text/Normalizer$NFKCMode;
.super Landroid/icu/text/Normalizer$Mode;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFKCMode"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Landroid/icu/text/Normalizer$Mode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/Normalizer$1;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Landroid/icu/text/Normalizer$NFKCMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNormalizer2(I)Landroid/icu/text/Normalizer2;
    .locals 0

    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_0

    .line 281
    invoke-static {}, Landroid/icu/text/Normalizer$NFKC32ModeImpl;->access$900()Landroid/icu/text/Normalizer$ModeImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/icu/text/Normalizer$NFKCModeImpl;->access$1000()Landroid/icu/text/Normalizer$ModeImpl;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/icu/text/Normalizer$ModeImpl;->access$300(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    move-result-object p0

    return-object p0
.end method
