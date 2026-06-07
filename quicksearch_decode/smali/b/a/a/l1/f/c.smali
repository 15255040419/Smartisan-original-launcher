.class public Lb/a/a/l1/f/c;
.super Ljava/lang/Object;
.source "Expression.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:[I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/a/l1/f/c;->d:I

    .line 3
    iput-object p1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lb/a/a/l1/f/c;->b:[I

    .line 5
    iget-object p1, p0, Lb/a/a/l1/f/c;->b:[I

    aput v0, p1, v0

    move p1, v0

    .line 6
    :goto_0
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xff09

    const/16 v3, 0x29

    const v4, 0xff08

    const/16 v5, 0x28

    if-ge p1, v1, :cond_4

    .line 7
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_3

    .line 8
    :cond_1
    iget v1, p0, Lb/a/a/l1/f/c;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/a/a/l1/f/c;->c:I

    goto :goto_2

    .line 9
    :cond_2
    :goto_1
    iget v1, p0, Lb/a/a/l1/f/c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/a/a/l1/f/c;->c:I

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 10
    :cond_4
    iget p1, p0, Lb/a/a/l1/f/c;->c:I

    if-lez p1, :cond_6

    move p1, v0

    .line 11
    :goto_3
    iget v1, p0, Lb/a/a/l1/f/c;->c:I

    if-ge p1, v1, :cond_5

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 13
    :cond_5
    iget-object p1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lb/a/a/l1/f/c;->b:[I

    .line 14
    iput v0, p0, Lb/a/a/l1/f/c;->c:I

    .line 15
    :cond_6
    :goto_4
    iget-object p1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_b

    .line 16
    iget-object p1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-lez v0, :cond_a

    .line 17
    iget-object v1, p0, Lb/a/a/l1/f/c;->b:[I

    add-int/lit8 v6, v0, -0x1

    aget v7, v1, v6

    aput v7, v1, v0

    .line 18
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_7

    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_8

    .line 19
    :cond_7
    iget-object v1, p0, Lb/a/a/l1/f/c;->b:[I

    aget v6, v1, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v0

    :cond_8
    if-eq p1, v3, :cond_9

    if-ne p1, v2, :cond_a

    .line 20
    :cond_9
    iget-object p1, p0, Lb/a/a/l1/f/c;->b:[I

    aget v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    return-void
.end method


# virtual methods
.method public a()Lb/a/a/l1/f/e;
    .locals 6

    .line 63
    iget v0, p0, Lb/a/a/l1/f/c;->c:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lb/a/a/l1/f/e;

    invoke-direct {v0}, Lb/a/a/l1/f/e;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 65
    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object v0

    .line 66
    iget v2, p0, Lb/a/a/l1/f/c;->d:I

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lb/a/a/l1/f/e;->a()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    :cond_1
    return-object v0
.end method

.method public a(II)Lb/a/a/l1/f/e;
    .locals 8

    const/4 v0, 0x1

    if-le p1, p2, :cond_0

    .line 5
    new-instance p1, Lb/a/a/l1/f/e;

    invoke-direct {p1}, Lb/a/a/l1/f/e;-><init>()V

    invoke-virtual {p1, v0}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    return-object p1

    .line 6
    :cond_0
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1e

    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1e

    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0xd

    if-ne v2, v5, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_1d

    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1d

    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x2

    .line 11
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v7, 0x0

    .line 12
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v2, :cond_3

    .line 13
    new-instance v1, Lb/a/a/l1/f/e;

    invoke-direct {v1}, Lb/a/a/l1/f/e;-><init>()V

    invoke-virtual {v1, v4}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    return-object v1

    :cond_3
    if-nez p1, :cond_5

    .line 14
    iget-object v7, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v0

    if-ne p2, v7, :cond_5

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_4

    .line 16
    new-instance v1, Lb/a/a/l1/f/e;

    invoke-direct {v1, v5, v6}, Lb/a/a/l1/f/e;-><init>(D)V

    return-object v1

    .line 17
    :cond_4
    new-instance v1, Lb/a/a/l1/f/e;

    invoke-direct {v1}, Lb/a/a/l1/f/e;-><init>()V

    invoke-virtual {v1, v4}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    return-object v1

    .line 18
    :cond_5
    iget v1, p0, Lb/a/a/l1/f/c;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/a/a/l1/f/c;->d:I

    .line 19
    new-instance v1, Lb/a/a/l1/f/e;

    invoke-direct {v1, v5, v6}, Lb/a/a/l1/f/e;-><init>(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move v1, p2

    :goto_0
    if-le v1, p1, :cond_c

    .line 20
    iget-object v5, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 21
    iget-object v6, p0, Lb/a/a/l1/f/c;->b:[I

    aget v7, v6, v1

    aget v6, v6, p1

    if-ne v7, v6, :cond_b

    invoke-virtual {p0, v1}, Lb/a/a/l1/f/c;->a(I)Z

    move-result v6

    if-eqz v6, :cond_b

    if-ne v5, v2, :cond_8

    add-int/lit8 v2, v1, -0x1

    .line 22
    invoke-virtual {p0, p1, v2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lb/a/a/l1/f/e;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object p1

    :cond_6
    add-int/2addr v1, v0

    .line 24
    invoke-virtual {p0, v1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lb/a/a/l1/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p2

    .line 26
    :cond_7
    invoke-static {p1, p2}, Lb/a/a/l1/f/e;->a(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_8
    if-ne v5, v3, :cond_b

    add-int/lit8 v2, v1, -0x1

    .line 27
    invoke-virtual {p0, p1, v2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lb/a/a/l1/f/e;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    return-object p1

    :cond_9
    add-int/2addr v1, v0

    .line 29
    invoke-virtual {p0, v1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lb/a/a/l1/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p2

    .line 31
    :cond_a
    invoke-static {p1, p2}, Lb/a/a/l1/f/e;->d(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 32
    :cond_c
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_e

    add-int/2addr p1, v0

    .line 33
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lb/a/a/l1/f/e;->b()Z

    move-result p2

    if-eqz p2, :cond_d

    return-object p1

    .line 35
    :cond_d
    invoke-static {p1}, Lb/a/a/l1/f/e;->a(Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_e
    move v1, p2

    :goto_1
    if-le v1, p1, :cond_18

    .line 36
    iget-object v2, p0, Lb/a/a/l1/f/c;->b:[I

    aget v3, v2, v1

    aget v2, v2, p1

    if-ne v3, v2, :cond_17

    .line 37
    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_14

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_11

    const/16 v3, 0xf7

    if-eq v2, v3, :cond_11

    const/16 v3, 0x2022

    if-eq v2, v3, :cond_14

    .line 38
    invoke-virtual {p0, v1}, Lb/a/a/l1/f/c;->b(I)Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v0, v1, -0x1

    .line 39
    invoke-virtual {p0, p1, v0}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lb/a/a/l1/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    .line 41
    :cond_f
    invoke-virtual {p0, v1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lb/a/a/l1/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p2

    .line 43
    :cond_10
    invoke-static {p1, p2}, Lb/a/a/l1/f/e;->c(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_11
    add-int/lit8 v2, v1, -0x1

    .line 44
    invoke-virtual {p0, p1, v2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lb/a/a/l1/f/e;->b()Z

    move-result v2

    if-eqz v2, :cond_12

    return-object p1

    :cond_12
    add-int/2addr v1, v0

    .line 46
    invoke-virtual {p0, v1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lb/a/a/l1/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p2

    .line 48
    :cond_13
    invoke-static {p1, p2}, Lb/a/a/l1/f/e;->b(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_14
    add-int/lit8 v2, v1, -0x1

    .line 49
    invoke-virtual {p0, p1, v2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lb/a/a/l1/f/e;->b()Z

    move-result v2

    if-eqz v2, :cond_15

    return-object p1

    :cond_15
    add-int/2addr v1, v0

    .line 51
    invoke-virtual {p0, v1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lb/a/a/l1/f/e;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    return-object p2

    .line 53
    :cond_16
    invoke-static {p1, p2}, Lb/a/a/l1/f/e;->c(Lb/a/a/l1/f/e;Lb/a/a/l1/f/e;)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 54
    :cond_18
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1a

    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff09

    if-eq v1, v2, :cond_1a

    .line 55
    iget-object p1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lb/a/a/l1/f/c;->a(C)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 56
    new-instance p1, Lb/a/a/l1/f/e;

    invoke-direct {p1}, Lb/a/a/l1/f/e;-><init>()V

    invoke-virtual {p1, v0}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    return-object p1

    .line 57
    :cond_19
    new-instance p1, Lb/a/a/l1/f/e;

    invoke-direct {p1}, Lb/a/a/l1/f/e;-><init>()V

    invoke-virtual {p1, v4}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    return-object p1

    .line 58
    :cond_1a
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1c

    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xff08

    if-ne v1, v2, :cond_1b

    goto :goto_2

    .line 59
    :cond_1b
    new-instance p1, Lb/a/a/l1/f/e;

    invoke-direct {p1}, Lb/a/a/l1/f/e;-><init>()V

    invoke-virtual {p1, v4}, Lb/a/a/l1/f/e;->a(I)Lb/a/a/l1/f/e;

    return-object p1

    :cond_1c
    :goto_2
    add-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 60
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_1d
    :goto_3
    sub-int/2addr p2, v0

    .line 61
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1

    :cond_1e
    :goto_4
    add-int/2addr p1, v0

    .line 62
    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/f/c;->a(II)Lb/a/a/l1/f/e;

    move-result-object p1

    return-object p1
.end method

.method public final a(C)Z
    .locals 1

    const-string v0, "+-*\u2022/\u00f7"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lb/a/a/l1/f/c;->a(C)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final b(I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2
    iget-object v2, p0, Lb/a/a/l1/f/c;->a:Ljava/lang/String;

    const/4 v3, 0x1

    sub-int/2addr p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v2, 0x29

    if-eq p1, v2, :cond_2

    const v2, 0xff09

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    const/16 v4, 0x39

    const/16 v5, 0x2e

    const/16 v6, 0x30

    if-lt p1, v6, :cond_3

    if-le p1, v4, :cond_4

    :cond_3
    if-ne p1, v5, :cond_5

    :cond_4
    move p1, v3

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    if-lt v1, v6, :cond_6

    if-le v1, v4, :cond_7

    :cond_6
    if-ne v1, v5, :cond_8

    :cond_7
    move v4, v3

    goto :goto_3

    :cond_8
    move v4, v0

    :goto_3
    const/16 v5, 0x28

    if-eq v1, v5, :cond_9

    const v5, 0xff08

    if-ne v1, v5, :cond_a

    :cond_9
    if-nez p1, :cond_c

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    return v3

    :cond_b
    return v0

    :cond_c
    :goto_4
    return v3
.end method
