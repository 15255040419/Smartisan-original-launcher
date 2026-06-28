.class Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;
.super Ljava/lang/Object;
.source "DecimalFormat_ICU58_Android.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormat_ICU58_Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Unit"
.end annotation


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6066
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->prefix:Ljava/lang/String;

    .line 6067
    iput-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 6083
    :cond_0
    instance-of v1, p1, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 6086
    :cond_1
    check-cast p1, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;

    .line 6087
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->prefix:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->suffix:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->suffix:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 6091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writePrefix(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 6075
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->prefix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public writeSuffix(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 6071
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->suffix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
