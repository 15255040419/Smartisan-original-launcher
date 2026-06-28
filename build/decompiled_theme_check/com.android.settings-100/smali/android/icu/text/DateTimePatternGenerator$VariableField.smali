.class public Landroid/icu/text/DateTimePatternGenerator$VariableField;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableField"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final canonicalIndex:I

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1293
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1306
    invoke-static {p1, p2}, Landroid/icu/text/DateTimePatternGenerator;->access$900(Ljava/lang/String;Z)I

    move-result p2

    iput p2, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    .line 1307
    iget p2, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    if-ltz p2, :cond_0

    .line 1311
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-void

    .line 1308
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal datetime field:\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1600(Landroid/icu/text/DateTimePatternGenerator$VariableField;)I
    .locals 0

    .line 1280
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getCanonicalIndex()I

    move-result p0

    return p0
.end method

.method public static getCanonicalCode(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1336
    :try_start_0
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->access$1100()[Ljava/lang/String;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1338
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCanonicalIndex()I
    .locals 0

    .line 1357
    iget p0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    return p0
.end method


# virtual methods
.method public getType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1325
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->access$1000()[[I

    move-result-object v0

    iget p0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object p0, v0, p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public isNumeric()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1350
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->access$1000()[[I

    move-result-object v0

    iget p0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object p0, v0, p0

    const/4 v0, 0x2

    aget p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1369
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-object p0
.end method
