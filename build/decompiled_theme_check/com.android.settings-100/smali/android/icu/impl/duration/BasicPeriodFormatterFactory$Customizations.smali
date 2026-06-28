.class Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/BasicPeriodFormatterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Customizations"
.end annotation


# instance fields
.field countVariant:B

.field displayDirection:Z

.field displayLimit:Z

.field separatorVariant:B

.field unitVariant:B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    .line 229
    iput-boolean v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    const/4 v0, 0x2

    .line 230
    iput-byte v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    const/4 v0, 0x0

    .line 231
    iput-byte v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    .line 232
    iput-byte v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return-void
.end method


# virtual methods
.method public copy()Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;
    .locals 2

    .line 235
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;

    invoke-direct {v0}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;-><init>()V

    .line 236
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayLimit:Z

    .line 237
    iget-boolean v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    iput-boolean v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->displayDirection:Z

    .line 238
    iget-byte v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->separatorVariant:B

    .line 239
    iget-byte v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    iput-byte v1, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->unitVariant:B

    .line 240
    iget-byte p0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    iput-byte p0, v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory$Customizations;->countVariant:B

    return-object v0
.end method
