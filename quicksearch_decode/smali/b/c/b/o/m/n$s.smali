.class public final Lb/c/b/o/m/n$s;
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
        "Ljava/util/Calendar;",
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
.method public bridge synthetic a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/c/b/o/m/n$s;->a(Lb/c/b/q/a;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;)Ljava/util/Calendar;
    .locals 9

    .line 3
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v0

    sget-object v1, Lb/c/b/q/b;->i:Lb/c/b/q/b;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lb/c/b/q/a;->q()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/a;->b()V

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    move-result-object v0

    sget-object v1, Lb/c/b/q/b;->d:Lb/c/b/q/b;

    if-eq v0, v1, :cond_7

    .line 7
    invoke-virtual {p1}, Lb/c/b/q/a;->p()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lb/c/b/q/a;->n()I

    move-result v1

    const-string v8, "year"

    .line 9
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const-string v8, "month"

    .line 10
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    const-string v8, "dayOfMonth"

    .line 11
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    const-string v8, "hourOfDay"

    .line 12
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v1

    goto :goto_0

    :cond_5
    const-string v8, "minute"

    .line 13
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v6, v1

    goto :goto_0

    :cond_6
    const-string v8, "second"

    .line 14
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_0

    .line 15
    :cond_7
    invoke-virtual {p1}, Lb/c/b/q/a;->g()V

    .line 16
    new-instance p1, Ljava/util/GregorianCalendar;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p1
.end method

.method public bridge synthetic a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lb/c/b/o/m/n$s;->a(Lb/c/b/q/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lb/c/b/q/c;Ljava/util/Calendar;)V
    .locals 2

    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p1}, Lb/c/b/q/c;->k()Lb/c/b/q/c;

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lb/c/b/q/c;->d()Lb/c/b/q/c;

    const-string v0, "year"

    .line 19
    invoke-virtual {p1, v0}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lb/c/b/q/c;->a(J)Lb/c/b/q/c;

    const-string v0, "month"

    .line 21
    invoke-virtual {p1, v0}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    const/4 v0, 0x2

    .line 22
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lb/c/b/q/c;->a(J)Lb/c/b/q/c;

    const-string v0, "dayOfMonth"

    .line 23
    invoke-virtual {p1, v0}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    const/4 v0, 0x5

    .line 24
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lb/c/b/q/c;->a(J)Lb/c/b/q/c;

    const-string v0, "hourOfDay"

    .line 25
    invoke-virtual {p1, v0}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    const/16 v0, 0xb

    .line 26
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lb/c/b/q/c;->a(J)Lb/c/b/q/c;

    const-string v0, "minute"

    .line 27
    invoke-virtual {p1, v0}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    const/16 v0, 0xc

    .line 28
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lb/c/b/q/c;->a(J)Lb/c/b/q/c;

    const-string v0, "second"

    .line 29
    invoke-virtual {p1, v0}, Lb/c/b/q/c;->a(Ljava/lang/String;)Lb/c/b/q/c;

    const/16 v0, 0xd

    .line 30
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lb/c/b/q/c;->a(J)Lb/c/b/q/c;

    .line 31
    invoke-virtual {p1}, Lb/c/b/q/c;->f()Lb/c/b/q/c;

    return-void
.end method
