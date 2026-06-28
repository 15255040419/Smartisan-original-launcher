.class Landroid/icu/text/MeasureFormat$MeasureProxy;
.super Ljava/lang/Object;
.source "MeasureFormat.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureProxy"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x53ba9df5cf4d9362L


# instance fields
.field private formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private keyValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Landroid/icu/util/ULocale;

.field private numberFormat:Landroid/icu/text/NumberFormat;

.field private subClass:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V
    .locals 0

    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1372
    iput-object p1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    .line 1373
    iput-object p2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 1374
    iput-object p3, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1375
    iput p4, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    .line 1376
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    return-void
.end method

.method private createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1415
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1422
    :goto_0
    new-instance v1, Landroid/icu/text/TimeUnitFormat;

    iget-object v2, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v1, v2, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 1423
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1, p0}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    return-object v1

    .line 1420
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1428
    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1434
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0

    .line 1436
    :cond_0
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown subclass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1432
    :cond_1
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat$MeasureProxy;->createTimeUnitFormat()Landroid/icu/text/TimeUnitFormat;

    move-result-object p0

    return-object p0

    .line 1430
    :cond_2
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {v0, v1, p0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1396
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 1397
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    .line 1398
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->access$200(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 1399
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1400
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    if-eqz v0, :cond_1

    .line 1403
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    .line 1407
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    .line 1408
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    return-void

    .line 1409
    :cond_0
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing optional values map."

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1401
    :cond_1
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing number format."

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1385
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1386
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$FormatWidth;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1388
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1389
    iget v0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->subClass:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 1390
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$MeasureProxy;->keyValues:Ljava/util/HashMap;

    invoke-interface {p1, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
