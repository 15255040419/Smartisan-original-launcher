.class Landroid/icu/util/EasterRule;
.super Ljava/lang/Object;
.source "EasterHoliday.java"

# interfaces
.implements Landroid/icu/util/DateRule;


# static fields
.field private static gregorian:Landroid/icu/util/GregorianCalendar;

.field private static orthodox:Landroid/icu/util/GregorianCalendar;


# instance fields
.field private calendar:Landroid/icu/util/GregorianCalendar;

.field private daysAfterEaster:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 277
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/EasterRule;->gregorian:Landroid/icu/util/GregorianCalendar;

    .line 278
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    sput-object v0, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    sget-object v0, Landroid/icu/util/EasterRule;->gregorian:Landroid/icu/util/GregorianCalendar;

    iput-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    .line 141
    iput p1, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    if-eqz p2, :cond_0

    .line 143
    sget-object p1, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    new-instance p2, Ljava/util/Date;

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Landroid/icu/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 144
    sget-object p1, Landroid/icu/util/EasterRule;->orthodox:Landroid/icu/util/GregorianCalendar;

    iput-object p1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    :cond_0
    return-void
.end method

.method private computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;
    .locals 9

    if-nez p2, :cond_0

    .line 237
    iget-object p2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    .line 239
    :cond_0
    monitor-enter p2

    .line 240
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 242
    invoke-virtual {p2, p1}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 243
    rem-int/lit8 v1, v0, 0x13

    .line 247
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getGregorianChange()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    .line 250
    div-int/lit8 v2, v0, 0x64

    .line 251
    div-int/lit8 v4, v2, 0x4

    sub-int v4, v2, v4

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v5, v5, 0xd

    div-int/lit8 v5, v5, 0x19

    sub-int/2addr v4, v5

    mul-int/lit8 v5, v1, 0x13

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xf

    rem-int/lit8 v4, v4, 0x1e

    .line 252
    div-int/lit8 v5, v4, 0x1c

    div-int/lit8 v6, v4, 0x1c

    const/16 v7, 0x1d

    add-int/lit8 v8, v4, 0x1

    div-int/2addr v7, v8

    mul-int/2addr v6, v7

    rsub-int/lit8 v1, v1, 0x15

    div-int/lit8 v1, v1, 0xb

    mul-int/2addr v6, v1

    rsub-int/lit8 v1, v6, 0x1

    mul-int/2addr v5, v1

    sub-int/2addr v4, v5

    .line 253
    div-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x13

    add-int/lit8 v1, v1, 0xf

    .line 258
    rem-int/lit8 v4, v1, 0x1e

    .line 259
    div-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    rem-int/lit8 v1, v1, 0x7

    :goto_0
    sub-int/2addr v4, v1

    add-int/lit8 v1, v4, 0x28

    .line 262
    div-int/lit8 v1, v1, 0x2c

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v4, 0x1c

    .line 263
    div-int/lit8 v2, v1, 0x4

    mul-int/lit8 v2, v2, 0x1f

    sub-int/2addr v4, v2

    .line 265
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->clear()V

    const/4 v2, 0x0

    .line 266
    invoke-virtual {p2, v2, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 267
    invoke-virtual {p2, p1, v0}, Landroid/icu/util/GregorianCalendar;->set(II)V

    sub-int/2addr v1, p1

    .line 268
    invoke-virtual {p2, v3, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    const/4 p1, 0x5

    .line 269
    invoke-virtual {p2, p1, v4}, Landroid/icu/util/GregorianCalendar;->set(II)V

    .line 270
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    .line 271
    iget p0, p0, Landroid/icu/util/EasterRule;->daysAfterEaster:I

    invoke-virtual {p2, p1, p0}, Landroid/icu/util/GregorianCalendar;->add(II)V

    .line 273
    invoke-virtual {p2}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    .line 274
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 3

    .line 197
    iget-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, p1, v1}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v1

    .line 205
    invoke-virtual {v1, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 208
    iget-object p1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/icu/util/GregorianCalendar;->get(I)I

    .line 209
    iget-object p1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {p1, v1, v1}, Landroid/icu/util/GregorianCalendar;->add(II)V

    .line 214
    iget-object p1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {p1}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, p1, v1}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {v1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 220
    monitor-exit v0

    return-object p0

    .line 222
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 223
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public firstAfter(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Landroid/icu/util/EasterRule;->doFirstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public isBetween(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 0

    .line 189
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/EasterRule;->firstBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOn(Ljava/util/Date;)Z
    .locals 5

    .line 173
    iget-object v0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v1, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 175
    iget-object p1, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result p1

    .line 177
    iget-object v2, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    iget-object v3, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {v3}, Landroid/icu/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-direct {p0, v3, v4}, Landroid/icu/util/EasterRule;->computeInYear(Ljava/util/Date;Landroid/icu/util/GregorianCalendar;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 179
    iget-object p0, p0, Landroid/icu/util/EasterRule;->calendar:Landroid/icu/util/GregorianCalendar;

    invoke-virtual {p0, v1}, Landroid/icu/util/GregorianCalendar;->get(I)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 180
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
