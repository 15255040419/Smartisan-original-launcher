.class public Lb/a/a/d1/a;
.super Ljava/lang/Object;
.source "T9SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/d1/a$d;,
        Lb/a/a/d1/a$c;,
        Lb/a/a/d1/a$b;
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;


# instance fields
.field public a:Lsmartisanos/t9search/T9SearchEngine;

.field public b:Lb/a/a/d1/a$d;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisanos/t9search/T9Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "icon"

    const-string v3, "package"

    const-string v4, "class"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/d1/a;->d:[Ljava/lang/String;

    const-string v1, "suggest_text_1"

    const-string v2, "suggest_icon_1"

    const-string v3, "suggest_intent_data"

    const-string v4, "suggest_intent_extra_data"

    const-string v5, "suggest_shortcut_id"

    const-string v6, "t9_match_range_text_1"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/d1/a;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lsmartisanos/t9search/T9SearchEngine;->getInstance()Lsmartisanos/t9search/T9SearchEngine;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/d1/a;->a:Lsmartisanos/t9search/T9SearchEngine;

    .line 4
    new-instance v0, Lb/a/a/d1/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/d1/a$d;-><init>(Lb/a/a/d1/a$a;)V

    iput-object v0, p0, Lb/a/a/d1/a;->b:Lb/a/a/d1/a$d;

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/d1/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/d1/a;-><init>()V

    return-void
.end method

.method public static a()Lb/a/a/d1/a;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/d1/a$b;->a()Lb/a/a/d1/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, v1, Lb/a/a/d1/a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 15
    invoke-virtual/range {p0 .. p1}, Lb/a/a/d1/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 16
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lb/a/a/d1/a;->e:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    .line 18
    monitor-exit p0

    return-object v0

    .line 19
    :cond_1
    :try_start_1
    iget-object v2, v1, Lb/a/a/d1/a;->a:Lsmartisanos/t9search/T9SearchEngine;

    iget-object v3, v1, Lb/a/a/d1/a;->c:Ljava/util/ArrayList;

    move-object/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Lsmartisanos/t9search/T9SearchEngine;->search(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    .line 21
    monitor-exit p0

    return-object v0

    .line 22
    :cond_2
    :try_start_2
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " in"

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    move v6, v5

    .line 26
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_4

    .line 27
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsmartisanos/t9search/T9Model;

    .line 28
    iget-wide v9, v7, Lsmartisanos/t9search/T9Model;->id:J

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    if-ge v6, v9, :cond_3

    const/16 v8, 0x2c

    .line 30
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    :cond_3
    iget-wide v8, v7, Lsmartisanos/t9search/T9Model;->id:J

    invoke-virtual {v3, v8, v9, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x29

    .line 32
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "applications"

    .line 34
    sget-object v11, Lb/a/a/d1/a;->d:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_6

    .line 35
    :goto_1
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 36
    new-instance v6, Lb/a/a/d1/a$c;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lb/a/a/d1/a$c;-><init>(Lb/a/a/d1/a$a;)V

    .line 37
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lb/a/a/d1/a$c;->a:Ljava/lang/String;

    const/4 v7, 0x2

    .line 38
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lb/a/a/d1/a$c;->b:Ljava/lang/String;

    const/4 v7, 0x3

    .line 39
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lb/a/a/d1/a$c;->c:Ljava/lang/String;

    const/4 v7, 0x4

    .line 40
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lb/a/a/d1/a$c;->d:Ljava/lang/String;

    .line 41
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 42
    invoke-virtual {v3, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsmartisanos/t9search/T9Model;

    .line 43
    invoke-virtual {v7}, Lsmartisanos/t9search/T9Model;->getMatchRanges()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iput-object v9, v6, Lb/a/a/d1/a$c;->e:Ljava/lang/String;

    .line 44
    invoke-virtual {v7}, Lsmartisanos/t9search/T9Model;->getWeights()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, Lb/a/a/d1/a$c;->f:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 46
    :cond_5
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 47
    throw v0

    .line 48
    :cond_6
    :goto_2
    iget-object v3, v1, Lb/a/a/d1/a;->b:Lb/a/a/d1/a$d;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/a/d1/a$c;

    .line 50
    sget-object v4, Lb/a/a/d1/a;->e:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lb/a/a/d1/a$c;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 51
    :cond_7
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/a/a/d1/a;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/d1/a;->c:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/d1/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const-string v2, "applications"

    const-string v0, "_id"

    const-string v1, "name"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 6
    :goto_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 9
    new-instance v5, Lsmartisanos/t9search/T9Model;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-direct {v5, v1, v2, v3}, Lsmartisanos/t9search/T9Model;-><init>(J[Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lb/a/a/d1/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 11
    :cond_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
