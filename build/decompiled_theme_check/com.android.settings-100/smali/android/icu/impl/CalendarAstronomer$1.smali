.class Landroid/icu/impl/CalendarAstronomer$1;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Landroid/icu/impl/CalendarAstronomer$AngleFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/CalendarAstronomer;->getSunTime(DZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/CalendarAstronomer;


# direct methods
.method constructor <init>(Landroid/icu/impl/CalendarAstronomer;)V
    .locals 0

    .line 664
    iput-object p1, p0, Landroid/icu/impl/CalendarAstronomer$1;->this$0:Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()D
    .locals 2

    .line 665
    iget-object p0, p0, Landroid/icu/impl/CalendarAstronomer$1;->this$0:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v0

    return-wide v0
.end method
