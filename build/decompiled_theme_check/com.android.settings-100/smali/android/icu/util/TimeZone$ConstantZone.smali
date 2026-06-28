.class final Landroid/icu/util/TimeZone$ConstantZone;
.super Landroid/icu/util/TimeZone;
.source "TimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/TimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantZone"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile transient isFrozen:Z

.field private rawOffset:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1268
    invoke-direct {p0, p2}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 1300
    iput-boolean p2, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    .line 1269
    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Landroid/icu/util/TimeZone$1;)V
    .locals 0

    .line 1262
    invoke-direct {p0, p1, p2}, Landroid/icu/util/TimeZone$ConstantZone;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 1

    .line 1315
    invoke-super {p0}, Landroid/icu/util/TimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZone$ConstantZone;

    const/4 v0, 0x0

    .line 1316
    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 1262
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 1309
    iput-boolean v0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 1262
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public getOffset(IIIIII)I
    .locals 0

    .line 1274
    iget p0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return p0
.end method

.method public getRawOffset()I
    .locals 0

    .line 1287
    iget p0, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return p0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 1304
    iget-boolean p0, p0, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen:Z

    return p0
.end method

.method public setRawOffset(I)V
    .locals 1

    .line 1279
    invoke-virtual {p0}, Landroid/icu/util/TimeZone$ConstantZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1282
    iput p1, p0, Landroid/icu/util/TimeZone$ConstantZone;->rawOffset:I

    return-void

    .line 1280
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen TimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useDaylightTime()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
