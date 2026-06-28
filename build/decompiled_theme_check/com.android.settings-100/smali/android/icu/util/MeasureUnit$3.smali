.class Landroid/icu/util/MeasureUnit$3;
.super Ljava/lang/Object;
.source "MeasureUnit.java"

# interfaces
.implements Landroid/icu/util/MeasureUnit$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;
    .locals 0

    .line 242
    new-instance p0, Landroid/icu/util/TimeUnit;

    invoke-direct {p0, p1, p2}, Landroid/icu/util/TimeUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
