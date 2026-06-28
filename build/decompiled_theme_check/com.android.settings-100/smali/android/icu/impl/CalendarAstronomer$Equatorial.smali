.class public final Landroid/icu/impl/CalendarAstronomer$Equatorial;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CalendarAstronomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Equatorial"
.end annotation


# instance fields
.field public final ascension:D

.field public final declination:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    iput-wide p1, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    .line 1568
    iput-wide p3, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    return-void
.end method


# virtual methods
.method public toHmsString()Ljava/lang/String;
    .locals 3

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    invoke-static {v1, v2}, Landroid/icu/impl/CalendarAstronomer;->access$000(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    invoke-static {v1, v2}, Landroid/icu/impl/CalendarAstronomer;->access$100(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->ascension:D

    const-wide v3, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/icu/impl/CalendarAstronomer$Equatorial;->declination:D

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
