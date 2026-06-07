.class public Lb/a/a/l1/a;
.super Landroid/database/CursorWrapper;
.source "InitiativeSortCursor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/l1/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/CursorWrapper;",
        "Ljava/util/Comparator<",
        "Lb/a/a/l1/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/database/Cursor;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/a/l1/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/l1/a;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/a/l1/a;->c:I

    .line 4
    iput-object p1, p0, Lb/a/a/l1/a;->a:Landroid/database/Cursor;

    .line 5
    iget-object v1, p0, Lb/a/a/l1/a;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    .line 7
    iget-object v1, p0, Lb/a/a/l1/a;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v1, p0, Lb/a/a/l1/a;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lb/a/a/l1/a$a;

    invoke-direct {v1}, Lb/a/a/l1/a$a;-><init>()V

    .line 9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lb/a/a/l1/a$a;->a:I

    .line 10
    iput v0, v1, Lb/a/a/l1/a$a;->b:I

    .line 11
    iget-object v2, p0, Lb/a/a/l1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, p0, Lb/a/a/l1/a;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lb/a/a/l1/a;->b:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/l1/a$a;Lb/a/a/l1/a$a;)I
    .locals 0

    .line 1
    iget p1, p1, Lb/a/a/l1/a$a;->a:I

    iget p2, p2, Lb/a/a/l1/a$a;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb/a/a/l1/a$a;

    check-cast p2, Lb/a/a/l1/a$a;

    invoke-virtual {p0, p1, p2}, Lb/a/a/l1/a;->a(Lb/a/a/l1/a$a;Lb/a/a/l1/a$a;)I

    move-result p1

    return p1
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/l1/a;->c:I

    return v0
.end method

.method public move(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/l1/a;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lb/a/a/l1/a;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lb/a/a/l1/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/a/a/l1/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/l1/a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lb/a/a/l1/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lb/a/a/l1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iput p1, p0, Lb/a/a/l1/a;->c:I

    .line 3
    iget-object v0, p0, Lb/a/a/l1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/a/a/l1/a$a;

    iget p1, p1, Lb/a/a/l1/a$a;->b:I

    .line 4
    iget-object v0, p0, Lb/a/a/l1/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lb/a/a/l1/a;->c:I

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/a/l1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 7
    iget-object v0, p0, Lb/a/a/l1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lb/a/a/l1/a;->c:I

    .line 8
    :cond_2
    iget-object v0, p0, Lb/a/a/l1/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/l1/a;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lb/a/a/l1/a;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
