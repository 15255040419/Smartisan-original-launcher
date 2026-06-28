.class Landroid/icu/impl/CalendarAstronomer$4;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Landroid/icu/impl/CalendarAstronomer$CoordFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/CalendarAstronomer;->getMoonRiseSet(Z)J
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

    .line 1200
    iput-object p1, p0, Landroid/icu/impl/CalendarAstronomer$4;->this$0:Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 0

    .line 1202
    iget-object p0, p0, Landroid/icu/impl/CalendarAstronomer$4;->this$0:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {p0}, Landroid/icu/impl/CalendarAstronomer;->getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object p0

    return-object p0
.end method
