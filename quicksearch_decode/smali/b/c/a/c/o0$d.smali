.class public Lb/c/a/c/o0$d;
.super Lb/c/a/c/o0;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/a/c/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/c/o0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient b:I

.field public final transient c:I

.field public final synthetic d:Lb/c/a/c/o0;


# direct methods
.method public constructor <init>(Lb/c/a/c/o0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/c/o0$d;->d:Lb/c/a/c/o0;

    invoke-direct {p0}, Lb/c/a/c/o0;-><init>()V

    .line 2
    iput p2, p0, Lb/c/a/c/o0$d;->b:I

    .line 3
    iput p3, p0, Lb/c/a/c/o0$d;->c:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lb/c/a/c/o0$d;->c:I

    invoke-static {p1, v0}, Lb/c/a/a/l;->a(II)I

    .line 2
    iget-object v0, p0, Lb/c/a/c/o0$d;->d:Lb/c/a/c/o0;

    iget v1, p0, Lb/c/a/c/o0$d;->b:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lb/c/a/c/o0;->iterator()Lb/c/a/c/u1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    invoke-super {p0}, Lb/c/a/c/o0;->listIterator()Lb/c/a/c/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lb/c/a/c/o0;->listIterator(I)Lb/c/a/c/v1;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lb/c/a/c/o0$d;->c:I

    return v0
.end method

.method public subList(II)Lb/c/a/c/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lb/c/a/c/o0<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget v0, p0, Lb/c/a/c/o0$d;->c:I

    invoke-static {p1, p2, v0}, Lb/c/a/a/l;->b(III)V

    .line 3
    iget-object v0, p0, Lb/c/a/c/o0$d;->d:Lb/c/a/c/o0;

    iget v1, p0, Lb/c/a/c/o0$d;->b:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lb/c/a/c/o0;->subList(II)Lb/c/a/c/o0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/c/a/c/o0$d;->subList(II)Lb/c/a/c/o0;

    move-result-object p1

    return-object p1
.end method
