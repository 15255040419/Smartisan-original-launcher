.class public La/e/a/h/e;
.super Ljava/lang/Object;
.source "ConstraintAnchor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/e/a/h/e$b;,
        La/e/a/h/e$c;,
        La/e/a/h/e$d;
    }
.end annotation


# instance fields
.field public a:La/e/a/h/m;

.field public final b:La/e/a/h/f;

.field public final c:La/e/a/h/e$d;

.field public d:La/e/a/h/e;

.field public e:I

.field public f:I

.field public g:La/e/a/h/e$c;

.field public h:I

.field public i:La/e/a/g;


# direct methods
.method public constructor <init>(La/e/a/h/f;La/e/a/h/e$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/e/a/h/m;

    invoke-direct {v0, p0}, La/e/a/h/m;-><init>(La/e/a/h/e;)V

    iput-object v0, p0, La/e/a/h/e;->a:La/e/a/h/m;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, La/e/a/h/e;->e:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, La/e/a/h/e;->f:I

    .line 5
    sget-object v1, La/e/a/h/e$c;->a:La/e/a/h/e$c;

    iput-object v1, p0, La/e/a/h/e;->g:La/e/a/h/e$c;

    .line 6
    sget-object v1, La/e/a/h/e$b;->a:La/e/a/h/e$b;

    .line 7
    iput v0, p0, La/e/a/h/e;->h:I

    .line 8
    iput-object p1, p0, La/e/a/h/e;->b:La/e/a/h/f;

    .line 9
    iput-object p2, p0, La/e/a/h/e;->c:La/e/a/h/e$d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget v0, p0, La/e/a/h/e;->h:I

    return v0
.end method

.method public a(La/e/a/c;)V
    .locals 2

    .line 1
    iget-object p1, p0, La/e/a/h/e;->i:La/e/a/g;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, La/e/a/g;

    sget-object v0, La/e/a/g$a;->a:La/e/a/g$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, La/e/a/g;-><init>(La/e/a/g$a;Ljava/lang/String;)V

    iput-object p1, p0, La/e/a/h/e;->i:La/e/a/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, La/e/a/g;->a()V

    :goto_0
    return-void
.end method

.method public a(La/e/a/h/e;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 18
    :cond_0
    invoke-virtual {p1}, La/e/a/h/e;->h()La/e/a/h/e$d;

    move-result-object v1

    .line 19
    iget-object v2, p0, La/e/a/h/e;->c:La/e/a/h/e$d;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 20
    sget-object v1, La/e/a/h/e$d;->f:La/e/a/h/e$d;

    if-ne v2, v1, :cond_2

    .line 21
    invoke-virtual {p1}, La/e/a/h/e;->c()La/e/a/h/f;

    move-result-object p1

    invoke-virtual {p1}, La/e/a/h/f;->y()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, La/e/a/h/e;->c()La/e/a/h/f;

    move-result-object p1

    invoke-virtual {p1}, La/e/a/h/f;->y()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    .line 22
    :cond_3
    sget-object v4, La/e/a/h/e$a;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 23
    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, La/e/a/h/e;->c:La/e/a/h/e$d;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    .line 24
    :pswitch_1
    sget-object v2, La/e/a/h/e$d;->c:La/e/a/h/e$d;

    if-eq v1, v2, :cond_5

    sget-object v2, La/e/a/h/e$d;->e:La/e/a/h/e$d;

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v3

    .line 25
    :goto_1
    invoke-virtual {p1}, La/e/a/h/e;->c()La/e/a/h/f;

    move-result-object p1

    instance-of p1, p1, La/e/a/h/i;

    if-eqz p1, :cond_8

    if-nez v2, :cond_7

    .line 26
    sget-object p1, La/e/a/h/e$d;->i:La/e/a/h/e$d;

    if-ne v1, p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v2, v3

    :cond_8
    :goto_3
    return v2

    .line 27
    :pswitch_2
    sget-object v2, La/e/a/h/e$d;->b:La/e/a/h/e$d;

    if-eq v1, v2, :cond_a

    sget-object v2, La/e/a/h/e$d;->d:La/e/a/h/e$d;

    if-ne v1, v2, :cond_9

    goto :goto_4

    :cond_9
    move v2, v0

    goto :goto_5

    :cond_a
    :goto_4
    move v2, v3

    .line 28
    :goto_5
    invoke-virtual {p1}, La/e/a/h/e;->c()La/e/a/h/f;

    move-result-object p1

    instance-of p1, p1, La/e/a/h/i;

    if-eqz p1, :cond_d

    if-nez v2, :cond_c

    .line 29
    sget-object p1, La/e/a/h/e$d;->h:La/e/a/h/e$d;

    if-ne v1, p1, :cond_b

    goto :goto_6

    :cond_b
    move v2, v0

    goto :goto_7

    :cond_c
    :goto_6
    move v2, v3

    :cond_d
    :goto_7
    return v2

    .line 30
    :pswitch_3
    sget-object p1, La/e/a/h/e$d;->f:La/e/a/h/e$d;

    if-eq v1, p1, :cond_e

    sget-object p1, La/e/a/h/e$d;->h:La/e/a/h/e$d;

    if-eq v1, p1, :cond_e

    sget-object p1, La/e/a/h/e$d;->i:La/e/a/h/e$d;

    if-eq v1, p1, :cond_e

    move v0, v3

    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(La/e/a/h/e;IILa/e/a/h/e$c;IZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, La/e/a/h/e;->d:La/e/a/h/e;

    .line 7
    iput v1, p0, La/e/a/h/e;->e:I

    const/4 p1, -0x1

    .line 8
    iput p1, p0, La/e/a/h/e;->f:I

    .line 9
    sget-object p1, La/e/a/h/e$c;->a:La/e/a/h/e$c;

    iput-object p1, p0, La/e/a/h/e;->g:La/e/a/h/e$c;

    const/4 p1, 0x2

    .line 10
    iput p1, p0, La/e/a/h/e;->h:I

    return v0

    :cond_0
    if-nez p6, :cond_1

    .line 11
    invoke-virtual {p0, p1}, La/e/a/h/e;->a(La/e/a/h/e;)Z

    move-result p6

    if-nez p6, :cond_1

    return v1

    .line 12
    :cond_1
    iput-object p1, p0, La/e/a/h/e;->d:La/e/a/h/e;

    if-lez p2, :cond_2

    .line 13
    iput p2, p0, La/e/a/h/e;->e:I

    goto :goto_0

    .line 14
    :cond_2
    iput v1, p0, La/e/a/h/e;->e:I

    .line 15
    :goto_0
    iput p3, p0, La/e/a/h/e;->f:I

    .line 16
    iput-object p4, p0, La/e/a/h/e;->g:La/e/a/h/e$c;

    .line 17
    iput p5, p0, La/e/a/h/e;->h:I

    return v0
.end method

.method public a(La/e/a/h/e;ILa/e/a/h/e$c;I)Z
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    .line 5
    invoke-virtual/range {v0 .. v6}, La/e/a/h/e;->a(La/e/a/h/e;IILa/e/a/h/e$c;IZ)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 3

    .line 1
    iget-object v0, p0, La/e/a/h/e;->b:La/e/a/h/f;

    invoke-virtual {v0}, La/e/a/h/f;->s()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, La/e/a/h/e;->f:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, La/e/a/h/e;->d:La/e/a/h/e;

    if-eqz v0, :cond_1

    iget-object v0, v0, La/e/a/h/e;->b:La/e/a/h/f;

    .line 3
    invoke-virtual {v0}, La/e/a/h/f;->s()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, La/e/a/h/e;->f:I

    return v0

    .line 5
    :cond_1
    iget v0, p0, La/e/a/h/e;->e:I

    return v0
.end method

.method public c()La/e/a/h/f;
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/e;->b:La/e/a/h/f;

    return-object v0
.end method

.method public d()La/e/a/h/m;
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/e;->a:La/e/a/h/m;

    return-object v0
.end method

.method public e()La/e/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/e;->i:La/e/a/g;

    return-object v0
.end method

.method public f()La/e/a/h/e$c;
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/e;->g:La/e/a/h/e$c;

    return-object v0
.end method

.method public g()La/e/a/h/e;
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/e;->d:La/e/a/h/e;

    return-object v0
.end method

.method public h()La/e/a/h/e$d;
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/e;->c:La/e/a/h/e$d;

    return-object v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, La/e/a/h/e;->d:La/e/a/h/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, La/e/a/h/e;->d:La/e/a/h/e;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/e/a/h/e;->e:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, La/e/a/h/e;->f:I

    .line 4
    sget-object v1, La/e/a/h/e$c;->b:La/e/a/h/e$c;

    iput-object v1, p0, La/e/a/h/e;->g:La/e/a/h/e$c;

    .line 5
    iput v0, p0, La/e/a/h/e;->h:I

    .line 6
    sget-object v0, La/e/a/h/e$b;->a:La/e/a/h/e$b;

    .line 7
    iget-object v0, p0, La/e/a/h/e;->a:La/e/a/h/m;

    invoke-virtual {v0}, La/e/a/h/m;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La/e/a/h/e;->b:La/e/a/h/f;

    invoke-virtual {v1}, La/e/a/h/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/e/a/h/e;->c:La/e/a/h/e$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
