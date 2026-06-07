.class public final Lb/a/a/l1/g/a;
.super Ljava/lang/Object;
.source "FileInfoHelper.kt"


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:[Ljava/lang/String;

.field public static final j:Lb/a/a/l1/g/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lb/a/a/l1/g/a;

    invoke-direct {v0}, Lb/a/a/l1/g/a;-><init>()V

    sput-object v0, Lb/a/a/l1/g/a;->j:Lb/a/a/l1/g/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    .line 6
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    .line 7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->f:Ljava/util/HashSet;

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->g:Ljava/util/HashSet;

    .line 9
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    .line 10
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->i()V

    .line 11
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->h()V

    .line 12
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->g()V

    .line 13
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->j()V

    .line 14
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->e()V

    .line 15
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->k()V

    .line 16
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->d()V

    .line 17
    invoke-virtual {v0}, Lb/a/a/l1/g/a;->b()V

    const-string v2, "_id"

    const-string v3, "_data AS suggest_text_1"

    const-string v4, "_size"

    const-string v5, "title"

    const-string v6, "mime_type AS suggest_text_2"

    const-string v7, "date_modified"

    .line 18
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 19
    sput-object v0, Lb/a/a/l1/g/a;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    const-string v3, "UNDEFINED"

    if-nez v2, :cond_9

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x2

    const-string v4, ".dotx"

    .line 2
    invoke-static {p0, v4, v1, v2, v0}, Ld/v/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p0, "DOTX"

    return-object p0

    :cond_5
    const-string v4, ".pages"

    .line 3
    invoke-static {p0, v4, v1, v2, v0}, Ld/v/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string p0, "PAGES"

    return-object p0

    :cond_6
    const-string v4, ".numbers"

    .line 4
    invoke-static {p0, v4, v1, v2, v0}, Ld/v/m;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "NUMBERS"

    return-object p0

    .line 5
    :cond_7
    sget-object p0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    move-object p0, v3

    :goto_3
    return-object p0

    :cond_9
    :goto_4
    return-object v3
.end method

.method public static final a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "querys"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v0, p0

    const-string v1, "_size!=0 AND _data NOT LIKE \'%/.%\'"

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND title LIKE \'%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_2

    :sswitch_1
    const-string p0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :sswitch_2
    const-string p0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :sswitch_3
    const-string p0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lb/a/a/l1/g/a;->j:Lb/a/a/l1/g/a;

    invoke-virtual {p1}, Lb/a/a/l1/g/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_4
    const-string p0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    .line 14
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lb/a/a/l1/g/a;->j:Lb/a/a/l1/g/a;

    invoke-virtual {p1}, Lb/a/a/l1/g/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_5
    const-string p0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lb/a/a/l1/g/a;->j:Lb/a/a/l1/g/a;

    invoke-virtual {p1}, Lb/a/a/l1/g/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    const-string v1, ""

    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60aeaa61 -> :sswitch_5
        -0x1b7d0822 -> :sswitch_4
        -0x9871a87 -> :sswitch_3
        0x3bd7a3f3 -> :sswitch_2
        0x3c44b178 -> :sswitch_1
        0x3cfa1c98 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final a([Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "querys"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataMimeTypeMap"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    .line 16
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    .line 17
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    goto :goto_0

    :cond_1
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    .line 18
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    goto :goto_0

    :cond_2
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    .line 19
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    goto :goto_0

    :cond_3
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    .line 20
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lb/a/a/l1/g/a;->f:Ljava/util/HashSet;

    goto :goto_0

    :cond_4
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    .line 21
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lb/a/a/l1/g/a;->g:Ljava/util/HashSet;

    .line 22
    :goto_0
    sget-object v0, Lb/a/a/l1/g/a;->j:Lb/a/a/l1/g/a;

    invoke-virtual {v0, p0, p2, p1}, Lb/a/a/l1/g/a;->a([Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V

    :cond_5
    return-void
.end method

.method public static final a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :sswitch_5
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    :goto_0
    sget-object p0, Lb/a/a/l1/g/a;->i:[Ljava/lang/String;

    goto :goto_2

    :cond_0
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60aeaa61 -> :sswitch_5
        -0x1b7d0822 -> :sswitch_4
        -0x9871a87 -> :sswitch_3
        0x3bd7a3f3 -> :sswitch_2
        0x3c44b178 -> :sswitch_1
        0x3cfa1c98 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "external"

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :sswitch_1
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :sswitch_2
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :sswitch_3
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    :goto_0
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60aeaa61 -> :sswitch_5
        -0x1b7d0822 -> :sswitch_4
        -0x9871a87 -> :sswitch_3
        0x3bd7a3f3 -> :sswitch_2
        0x3c44b178 -> :sswitch_1
        0x3cfa1c98 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final c(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "VIDEO"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701e4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "PAGES"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701da

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "AUDIO"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701c8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "XLSX"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701e6

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "TEXT"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701e2

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "PPTX"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701e0

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "HTML"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701d2

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "DOTX"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701ce

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "DOCX"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701cb

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "DOCM"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701ca

    goto :goto_1

    :sswitch_a
    const-string v0, "ZIP"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701e9

    goto :goto_1

    :sswitch_b
    const-string v0, "XLS"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701e5

    goto :goto_1

    :sswitch_c
    const-string v0, "PPT"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701de

    goto :goto_1

    :sswitch_d
    const-string v0, "PDF"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701db

    goto :goto_1

    :sswitch_e
    const-string v0, "KEY"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701d4

    goto :goto_1

    :sswitch_f
    const-string v0, "DOC"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701c9

    goto :goto_1

    :sswitch_10
    const-string v0, "APK"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701c7

    goto :goto_1

    :sswitch_11
    const-string v0, "NUMBERS"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0701d6

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f0701e3

    :goto_1
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4c71e5d6 -> :sswitch_11
        0xfdfc -> :sswitch_10
        0x10918 -> :sswitch_f
        0x1223f -> :sswitch_e
        0x134d2 -> :sswitch_d
        0x13654 -> :sswitch_c
        0x153df -> :sswitch_b
        0x15b01 -> :sswitch_a
        0x201a35 -> :sswitch_9
        0x201a40 -> :sswitch_8
        0x201c4f -> :sswitch_7
        0x21ffab -> :sswitch_6
        0x259484 -> :sswitch_5
        0x273d2d -> :sswitch_4
        0x292859 -> :sswitch_3
        0x3bba3b6 -> :sswitch_2
        0x485f7a4 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, " AND (mime_type IN (\'application/vnd.android.package-archive\') OR _data LIKE \'%.apk.1\' OR _data LIKE \'%.apk1.1\')"

    return-object v0
.end method

.method public final a([Ljava/lang/String;Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashSet;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p3

    .line 25
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 27
    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 28
    :cond_1
    array-length v3, v2

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_7

    aget-object v13, v2, v6

    const-string v7, "file"

    .line 29
    invoke-static {v13, v7}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x2e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v13

    invoke-static/range {v7 .. v12}, Ld/v/n;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 30
    invoke-virtual {v13, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v7, v8}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "(this as java.lang.String).toLowerCase()"

    invoke-static {v7, v8}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    array-length v8, v0

    move v9, v5

    move v10, v9

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v10, v0, v9

    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 32
    invoke-static {v13, v10, v5, v11, v12}, Ld/v/n;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    move v10, v4

    goto :goto_2

    :cond_2
    move-object/from16 v8, p4

    move v10, v5

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    .line 33
    :goto_3
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    .line 34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 35
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 36
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "MimeTypeMap.getSingleton\u2026TypeFromExtension(suffix)"

    invoke-static {v7, v10}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 38
    :cond_4
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v8, p4

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    :goto_5
    return-void
.end method

.method public final a([Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 23
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, p2, p3}, Lb/a/a/l1/g/a;->a([Ljava/lang/String;Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->f:Ljava/util/HashSet;

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, " AND (mime_type IN (\'application/zip\',\'application/x-rar-compressed\',\'application/x-7z-compressed\'))"

    return-object v0
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->g:Ljava/util/HashSet;

    const-string v1, "rar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lb/a/a/l1/g/a;->g:Ljava/util/HashSet;

    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lb/a/a/l1/g/a;->g:Ljava/util/HashSet;

    const-string v1, "7z"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "mka"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "awb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "dsf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "flac"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lb/a/a/l1/g/a;->d:Ljava/util/HashSet;

    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, " AND (mime_type IN (\'application/msword\',\'application/vnd.openxmlformats-officedocument.wordprocessingml.document\',\'application/vnd.openxmlformats-officedocument.wordprocessingml.template\',\'application/x-iwork-keynote-sffkey\',\'application/pdf\',\'application/vnd.ms-excel\',\'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet\',\'application/vnd.ms-powerpoint\',\'application/vnd.openxmlformats-officedocument.presentationml.presentation\',\'application/x-iwork-pages-sffpages\',\'application/x-iwork-numbers-sffnumbers\') OR _data LIKE \'%.dotx\' OR _data LIKE \'%.pages\' OR _data LIKE \'%.numbers\')"

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "doc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "docx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "xls"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "xlsx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "ppt"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "pptx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "numbers"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lb/a/a/l1/g/a;->b:Ljava/util/HashSet;

    const-string v1, "pages"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/tencent/MicroMsg/Download"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/tencent/QQfile_recv"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/DingTalk"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/Download"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/Download/WeiXin"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/Desktop"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/DCIM"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/Music"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v0, Lb/a/a/l1/g/a;->h:Ljava/util/LinkedList;

    const-string v1, "/storage/emulated/0/Movies"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/msword"

    const-string v2, "DOC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v2, "DOCX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v2, "DOTX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.ms-excel"

    const-string v2, "XLS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v2, "XLSX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.ms-powerpoint"

    const-string v2, "PPT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    const-string v3, "PPTX"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v2, "application/x-iwork-keynote-sffkey"

    const-string v3, "KEY"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v2, "UNDEFINED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.ms-outlook"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/pdf"

    const-string v3, "PDF"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.ms-works"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "VIDEO"

    const-string v3, "video/3gpp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "video/x-ms-asf"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "video/x-msvideo"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "video/x-m4v"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "video/quicktime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "video/vnd.mpegurl"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "video/mp4"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "video/mpeg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "audio/x-pn-realaudio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "audio/x-wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "audio/x-ms-wma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "audio/x-ms-wmv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "IMAGE"

    const-string v3, "image/bmp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "image/gif"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "image/jpeg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "image/png"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "image/webp"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "AUDIO"

    const-string v3, "audio/x-mpegurl"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "audio/mp4a-latm"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "audio/x-mpeg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "audio/mpeg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "audio/ogg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "text/plain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "text/html"

    const-string v3, "TEXT"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/x-javascript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/rtf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.android.package-archive"

    const-string v3, "APK"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "ZIP"

    const-string v3, "application/zip"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "application/x-rar-compressed"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "application/x-gtar"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v3, "application/x-gzip"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/java-archive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/x-tar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/x-compressed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/x-compress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "application/vnd.mpohun.certificate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lb/a/a/l1/g/a;->a:Ljava/util/HashMap;

    const-string v1, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "dng"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "tiff"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lb/a/a/l1/g/a;->c:Ljava/util/HashSet;

    const-string v1, "webp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "rmvb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "avi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "rm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "flv"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "mov"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "mkv"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Lb/a/a/l1/g/a;->e:Ljava/util/HashSet;

    const-string v1, "m4v"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
