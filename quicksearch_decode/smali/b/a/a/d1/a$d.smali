.class public Lb/a/a/d1/a$d;
.super Ljava/lang/Object;
.source "T9SearchManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lb/a/a/d1/a$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/d1/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/a/a/d1/a$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/d1/a$c;Lb/a/a/d1/a$c;)I
    .locals 1

    .line 1
    iget-object p2, p2, Lb/a/a/d1/a$c;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Lb/a/a/d1/a$c;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/a/a/d1/a$c;

    check-cast p2, Lb/a/a/d1/a$c;

    invoke-virtual {p0, p1, p2}, Lb/a/a/d1/a$d;->a(Lb/a/a/d1/a$c;Lb/a/a/d1/a$c;)I

    move-result p1

    return p1
.end method
