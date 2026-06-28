.class final Landroid/icu/text/Normalizer$NFD32ModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFD32ModeImpl"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 175
    new-instance v0, Landroid/icu/text/Normalizer$ModeImpl;

    new-instance v1, Landroid/icu/text/FilteredNormalizer2;

    .line 176
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v2

    .line 177
    invoke-static {}, Landroid/icu/text/Normalizer$Unicode32;->access$100()Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/icu/text/FilteredNormalizer2;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/UnicodeSet;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/Normalizer$ModeImpl;-><init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer$NFD32ModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Landroid/icu/text/Normalizer$ModeImpl;
    .locals 1

    .line 174
    sget-object v0, Landroid/icu/text/Normalizer$NFD32ModeImpl;->INSTANCE:Landroid/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method
