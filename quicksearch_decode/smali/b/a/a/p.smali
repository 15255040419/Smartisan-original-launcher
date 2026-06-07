.class public Lb/a/a/p;
.super Lb/a/a/h;
.source "CursorBackedSuggestionExtras.java"


# static fields
.field public static final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Landroid/database/Cursor;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lb/a/a/p;->e:Ljava/util/HashSet;

    .line 2
    sget-object v0, Lb/a/a/p;->e:Ljava/util/HashSet;

    sget-object v1, Lb/a/a/t0;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lb/a/a/h;-><init>(Lcom/android/quicksearchbox/SuggestionExtras;)V

    .line 2
    iput-object p1, p0, Lb/a/a/p;->b:Landroid/database/Cursor;

    .line 3
    iput p2, p0, Lb/a/a/p;->c:I

    .line 4
    iput-object p3, p0, Lb/a/a/p;->d:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/database/Cursor;I)Lb/a/a/p;
    .locals 2

    .line 2
    invoke-static {p0}, Lb/a/a/p;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lb/a/a/p;

    invoke-direct {v1, p0, p1, v0}, Lb/a/a/p;-><init>(Landroid/database/Cursor;ILjava/util/List;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/database/Cursor;)[Ljava/lang/String;
    .locals 2

    .line 4
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "QSB.CBSE"

    const-string v1, "getColumnNames() failed, "

    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lb/a/a/p;->a(Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 3
    sget-object v4, Lb/a/a/p;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Lb/a/a/p;->b:Landroid/database/Cursor;

    iget v2, p0, Lb/a/a/p;->c:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 7
    iget-object v1, p0, Lb/a/a/p;->b:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0

    .line 8
    :cond_0
    iget-object v2, p0, Lb/a/a/p;->b:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtra("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") failed, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "QSB.CBSE"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/p;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lb/a/a/p;->d:Ljava/util/List;

    return-object v0
.end method
