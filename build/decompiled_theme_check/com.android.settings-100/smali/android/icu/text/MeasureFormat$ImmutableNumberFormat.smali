.class final Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImmutableNumberFormat"
.end annotation


# instance fields
.field private nf:Landroid/icu/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/icu/text/NumberFormat;)V
    .locals 0

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1106
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/NumberFormat;

    iput-object p1, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;
    .locals 0

    .line 1102
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized format(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1125
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    .line 1120
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    monitor-enter p0

    .line 1115
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get()Landroid/icu/text/NumberFormat;
    .locals 1

    monitor-enter p0

    .line 1110
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrefix(Z)Ljava/lang/String;
    .locals 0

    .line 1129
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    check-cast p0, Landroid/icu/text/DecimalFormat;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSuffix(Z)Ljava/lang/String;
    .locals 0

    .line 1132
    iget-object p0, p0, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->nf:Landroid/icu/text/NumberFormat;

    check-cast p0, Landroid/icu/text/DecimalFormat;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
