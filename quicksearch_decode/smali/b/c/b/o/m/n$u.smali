.class public final Lb/c/b/o/m/n$u;
.super Lb/c/b/m;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/o/m/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/b/m<",
        "Lb/c/b/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/q/a;)Lb/c/b/e;
    .locals 3

    .line 3
    sget-object v0, Lb/c/b/o/m/n$b0;->a:[I

    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :pswitch_0
    new-instance v0, Lb/c/b/h;

    invoke-direct {v0}, Lb/c/b/h;-><init>()V

    .line 6
    invoke-virtual {p1}, Lb/c/b/q/a;->b()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lb/c/b/q/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lb/c/b/q/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$u;->a(Lb/c/b/q/a;)Lb/c/b/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/c/b/h;->a(Ljava/lang/String;Lb/c/b/e;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/a;->g()V

    return-object v0

    .line 10
    :pswitch_1
    new-instance v0, Lb/c/b/d;

    invoke-direct {v0}, Lb/c/b/d;-><init>()V

    .line 11
    invoke-virtual {p1}, Lb/c/b/q/a;->a()V

    .line 12
    :goto_1
    invoke-virtual {p1}, Lb/c/b/q/a;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$u;->a(Lb/c/b/q/a;)Lb/c/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/b/d;->a(Lb/c/b/e;)V

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lb/c/b/q/a;->f()V

    return-object v0

    .line 15
    :pswitch_2
    invoke-virtual {p1}, Lb/c/b/q/a;->q()V

    .line 16
    sget-object p1, Lb/c/b/g;->a:Lb/c/b/g;

    return-object p1

    .line 17
    :pswitch_3
    new-instance v0, Lb/c/b/j;

    invoke-virtual {p1}, Lb/c/b/q/a;->r()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/c/b/j;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 18
    :pswitch_4
    new-instance v0, Lb/c/b/j;

    invoke-virtual {p1}, Lb/c/b/q/a;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/c/b/j;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    .line 19
    :pswitch_5
    invoke-virtual {p1}, Lb/c/b/q/a;->r()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Lb/c/b/j;

    new-instance v1, Lb/c/b/o/g;

    invoke-direct {v1, p1}, Lb/c/b/o/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lb/c/b/j;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$u;->a(Lb/c/b/q/a;)Lb/c/b/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/c;Lb/c/b/e;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 21
    invoke-virtual {p2}, Lb/c/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 22
    :cond_0
    invoke-virtual {p2}, Lb/c/b/e;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {p2}, Lb/c/b/e;->c()Lb/c/b/j;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lb/c/b/j;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p2}, Lb/c/b/j;->m()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/c/b/q/c;->a(Ljava/lang/Number;)Lb/c/b/q/c;

    goto/16 :goto_3

    .line 26
    :cond_1
    invoke-virtual {p2}, Lb/c/b/j;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p2}, Lb/c/b/j;->h()Z

    move-result p2

    invoke-virtual {p1, p2}, Lb/c/b/q/c;->d(Z)Lb/c/b/q/c;

    goto/16 :goto_3

    .line 28
    :cond_2
    invoke-virtual {p2}, Lb/c/b/j;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb/c/b/q/c;->d(Ljava/lang/String;)Lb/c/b/q/c;

    goto/16 :goto_3

    .line 29
    :cond_3
    invoke-virtual {p2}, Lb/c/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {p1}, Lb/c/b/q/c;->c()Lb/c/b/q/c;

    .line 31
    invoke-virtual {p2}, Lb/c/b/e;->a()Lb/c/b/d;

    move-result-object p2

    invoke-virtual {p2}, Lb/c/b/d;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/e;

    .line 32
    invoke-virtual {p0, p1, v0}, Lb/c/b/o/m/n$u;->a(Lb/c/b/q/c;Lb/c/b/e;)V

    goto :goto_0

    .line 33
    :cond_4
    invoke-virtual {p1}, Lb/c/b/q/c;->e()Lb/c/b/q/c;

    goto :goto_3

    .line 34
    :cond_5
    invoke-virtual {p2}, Lb/c/b/e;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {p1}, Lb/c/b/q/c;->d()Lb/c/b/q/c;

    .line 36
    invoke-virtual {p2}, Lb/c/b/e;->b()Lb/c/b/h;

    move-result-object p2

    invoke-virtual {p2}, Lb/c/b/h;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/e;

    invoke-virtual {p0, p1, v0}, Lb/c/b/o/m/n$u;->a(Lb/c/b/q/c;Lb/c/b/e;)V

    goto :goto_1

    .line 39
    :cond_6
    invoke-virtual {p1}, Lb/c/b/q/c;->f()Lb/c/b/q/c;

    goto :goto_3

    .line 40
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lb/c/b/q/c;->k()Lb/c/b/q/c;

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lb/c/b/e;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/n$u;->a(Lb/c/b/q/c;Lb/c/b/e;)V

    return-void
.end method
