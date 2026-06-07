.class public Lb/a/a/n1/d0;
.super Ljava/lang/Object;
.source "SidebarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/n1/d0$c;,
        Lb/a/a/n1/d0$d;
    }
.end annotation


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.smartisanos.appstore.SuggestionsProvider/search_suggest_query?limit=50&check_install=1"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lb/a/a/n1/d0;->a:Landroid/net/Uri;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lb/a/a/n1/d0;->b:Ljava/util/HashSet;

    .line 3
    sget-object v0, Lb/a/a/n1/d0;->b:Ljava/util/HashSet;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lb/a/a/n1/d0;->b:Ljava/util/HashSet;

    const-string v1, "com.smartisanos.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lb/a/a/n1/d0;->b:Ljava/util/HashSet;

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lb/a/a/n1/d0;->b:Ljava/util/HashSet;

    const-string v1, "com.smartisanos.clock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lb/a/a/n1/d0;->b:Ljava/util/HashSet;

    const-string v1, "com.smartisanos.cloudsync"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/n1/d0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/a/n1/d0;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f07010b

    goto :goto_0

    :cond_1
    const p1, 0x7f07010f

    goto :goto_0

    :cond_2
    const p1, 0x7f070111

    goto :goto_0

    :cond_3
    const p1, 0x7f070110

    goto :goto_0

    :cond_4
    const p1, 0x7f07010c

    :goto_0
    const/4 v0, 0x0

    if-lez p1, :cond_5

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 106
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public static a(Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f080101

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/a/n1/d0;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 100
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06021a

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f060219

    .line 103
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 104
    invoke-static {p1, v0, p0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static synthetic a()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/n1/d0;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public static a(Lcom/android/quicksearchbox/Suggestion;)Landroid/net/Uri;
    .locals 1

    .line 44
    invoke-interface {p0}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "drag_uri"

    .line 45
    invoke-interface {p0, v0}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/database/Cursor;)Lb/a/a/n1/d0$c;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 49
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v1, Lb/a/a/n1/d0$c;

    invoke-direct {v1, v0}, Lb/a/a/n1/d0$c;-><init>(Lb/a/a/n1/d0$a;)V

    .line 51
    invoke-static {p0, v1}, Lb/a/a/n1/d0;->a(Landroid/database/Cursor;Lb/a/a/n1/d0$c;)Lb/a/a/n1/d0$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 52
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 53
    throw v0

    :cond_1
    move-object v1, v0

    .line 54
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildDragInfo, dragInfo= "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lb/a/a/n1/d0$c;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SidebarManager"

    invoke-static {v0, p0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Landroid/database/Cursor;Lb/a/a/n1/d0$c;)Lb/a/a/n1/d0$c;
    .locals 2

    const-string v0, "drag_type"

    .line 66
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lb/a/a/n1/d0$c;->a:I

    .line 67
    iget v0, p1, Lb/a/a/n1/d0$c;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "drag_image"

    .line 68
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lb/a/a/n1/d0$c;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "drag_file"

    .line 70
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 71
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lb/a/a/n1/d0$c;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "drag_text"

    .line 72
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lb/a/a/n1/d0$c;->b:Ljava/lang/String;

    :goto_0
    const-string v0, "drag_mime_type"

    .line 74
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 75
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lb/a/a/n1/d0$c;->e:Ljava/lang/String;

    :cond_3
    const-string v0, "drag_display_name"

    .line 76
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 77
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lb/a/a/n1/d0$c;->f:Ljava/lang/String;

    :cond_4
    return-object p1
.end method

.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Lb/a/a/n1/d0$c;
    .locals 6

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "SidebarManager"

    move-object v2, v1

    if-eqz p0, :cond_3

    .line 56
    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    new-instance v2, Lb/a/a/n1/d0$c;

    invoke-direct {v2, v1}, Lb/a/a/n1/d0$c;-><init>(Lb/a/a/n1/d0$a;)V

    const-string v3, "suggest_text_2"

    .line 58
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 59
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildAppDragInfo pkgName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", queryPackageName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-static {p0, v2}, Lb/a/a/n1/d0;->a(Landroid/database/Cursor;Lb/a/a/n1/d0$c;)Lb/a/a/n1/d0$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 64
    throw p1

    .line 65
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "buildAppDragInfo, dragInfo= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lb/a/a/n1/d0$c;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static synthetic a(Lb/a/a/n1/d0;Landroid/content/Context;Landroid/net/Uri;)Lb/a/a/n1/d0$c;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lb/a/a/n1/d0;->a(Landroid/content/Context;Landroid/net/Uri;)Lb/a/a/n1/d0$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lb/a/a/n1/d0;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lb/a/a/n1/d0$c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/n1/d0;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lb/a/a/n1/d0$c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lb/a/a/n1/d0$c;
    .locals 2

    .line 40
    new-instance v0, Lb/a/a/n1/d0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/n1/d0$c;-><init>(Lb/a/a/n1/d0$a;)V

    const/4 v1, 0x0

    .line 41
    iput v1, v0, Lb/a/a/n1/d0$c;->a:I

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "https://www.smartisan.com/apps/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lb/a/a/n1/d0$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lb/a/a/n1/d0;Landroid/view/View;Lb/a/a/n1/d0$c;IZ)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/n1/d0$c;IZ)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f07010e

    goto :goto_0

    :cond_1
    const p1, 0x7f07010d

    :goto_0
    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static b()Lb/a/a/n1/d0;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/n1/d0$d;->a()Lb/a/a/n1/d0;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/android/quicksearchbox/Suggestion;)Z
    .locals 1

    .line 3
    instance-of v0, p0, Lb/a/a/w;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Lb/a/a/w;

    .line 5
    invoke-virtual {p0}, Lb/a/a/w;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lb/a/a/w;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lb/a/a/w;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lb/a/a/w;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lb/a/a/w;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .line 2
    sget-object v0, Lb/a/a/n1/d0;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/net/Uri;)Lb/a/a/n1/d0$c;
    .locals 6

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDragInfo, dragUri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarManager"

    invoke-static {v1, v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lb/a/a/n1/d0;->a(Landroid/database/Cursor;)Lb/a/a/n1/d0$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lb/a/a/n1/d0$c;
    .locals 8

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryDragInfoFromAppStore, dragUri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SidebarManager"

    invoke-static {v1, v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 34
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryDragInfoFromAppStore query= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pkgName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p4}, Lb/a/a/n1/d0;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-static {p3}, Lb/a/a/n1/d0;->a(Ljava/lang/String;)Lb/a/a/n1/d0$c;

    move-result-object p1

    return-object p1

    .line 37
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    :cond_2
    move-object v6, v0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 39
    invoke-static {p1, p4}, Lb/a/a/n1/d0;->a(Landroid/database/Cursor;Ljava/lang/String;)Lb/a/a/n1/d0$c;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/view/View;Landroid/content/Context;ILcom/android/quicksearchbox/Suggestion;Z)V
    .locals 5

    .line 19
    new-instance v0, Lb/a/a/n1/d0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/a/n1/d0$c;-><init>(Lb/a/a/n1/d0$a;)V

    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lb/a/a/n1/d0$c;->a:I

    .line 21
    invoke-interface {p4}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "drag_text"

    .line 22
    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 23
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f10016d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-interface {p4}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    .line 25
    invoke-interface {p4}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v3, v4

    .line 26
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 27
    :cond_1
    iput-object v2, v0, Lb/a/a/n1/d0$c;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1, v0, p3, p5}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/n1/d0$c;IZ)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f1001b4

    .line 29
    invoke-static {p2, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 31
    invoke-virtual/range {v0 .. v7}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 32
    new-instance v8, Lb/a/a/n1/d0$a;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p1

    move v6, p4

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lb/a/a/n1/d0$a;-><init>(Lb/a/a/n1/d0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;IZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p2

    invoke-virtual {p2, v8, v0, v1}, Lb/a/a/m1/c;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;Landroid/net/Uri;IZ)V
    .locals 8

    .line 43
    new-instance v7, Lb/a/a/n1/d0$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lb/a/a/n1/d0$b;-><init>(Lb/a/a/n1/d0;Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;IZ)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    invoke-virtual {p2, v7, p1, p3}, Lb/a/a/m1/c;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/android/quicksearchbox/Suggestion;Lb/a/a/m1/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lcom/android/quicksearchbox/Suggestion;Lb/a/a/m1/c;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/android/quicksearchbox/Suggestion;Lb/a/a/m1/c;Z)V
    .locals 9

    .line 7
    invoke-static {p2}, Lb/a/a/n1/d0;->b(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 9
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    .line 10
    sget-object v1, Lb/a/a/n1/i;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f1001b4

    .line 11
    invoke-static {v4, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, v4

    move v4, v0

    move-object v5, p2

    move v6, p4

    .line 12
    invoke-virtual/range {v1 .. v6}, Lb/a/a/n1/d0;->a(Landroid/view/View;Landroid/content/Context;ILcom/android/quicksearchbox/Suggestion;Z)V

    goto :goto_0

    .line 13
    :pswitch_2
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v4, p2, p4}, Lsmartisanos/util/SidebarUtils;->dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 14
    :pswitch_3
    invoke-static {p2}, Lb/a/a/n1/d0;->a(Lcom/android/quicksearchbox/Suggestion;)Landroid/net/Uri;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v6, v0

    move v7, p4

    .line 15
    invoke-virtual/range {v1 .. v7}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-interface {p2}, Lcom/android/quicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object p2

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    aget-object v7, p2, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v5, v0

    move v8, p4

    .line 18
    invoke-virtual/range {v1 .. v8}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 5
    invoke-static {p1}, Lsmartisanos/util/SidebarUtils;->isSidebarShowing(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/view/View;Lb/a/a/n1/d0$c;IZ)Z
    .locals 7

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    iget v0, p2, Lb/a/a/n1/d0$c;->a:I

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_1

    const/4 p3, 0x2

    if-eq v0, p3, :cond_0

    goto/16 :goto_0

    .line 80
    :cond_0
    iget-object p3, p2, Lb/a/a/n1/d0$c;->d:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 81
    new-instance p3, Ljava/io/File;

    iget-object v0, p2, Lb/a/a/n1/d0$c;->d:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lb/a/a/n1/d0$c;->e:Ljava/lang/String;

    invoke-static {p1, v1, p3, p2, p4}, Lsmartisanos/util/SidebarUtils;->dragImage(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 82
    :cond_1
    iget-object p4, p2, Lb/a/a/n1/d0$c;->c:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_7

    const/4 p4, 0x3

    if-eq p3, p4, :cond_3

    const/4 p4, 0x5

    if-eq p3, p4, :cond_3

    const/4 p4, 0x7

    if-eq p3, p4, :cond_3

    .line 83
    new-instance p3, Ljava/io/File;

    iget-object p4, p2, Lb/a/a/n1/d0$c;->c:Ljava/lang/String;

    invoke-direct {p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object p4, p2, Lb/a/a/n1/d0$c;->f:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 85
    iget-object p2, p2, Lb/a/a/n1/d0$c;->e:Ljava/lang/String;

    invoke-static {p1, v1, p3, p2}, Lsmartisanos/util/SidebarUtils;->dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object p4, p2, Lb/a/a/n1/d0$c;->e:Ljava/lang/String;

    iget-object p2, p2, Lb/a/a/n1/d0$c;->f:Ljava/lang/String;

    invoke-static {p1, v1, p3, p4, p2}, Lsmartisanos/util/SidebarUtils;->dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_3
    invoke-static {v1, p3}, Lb/a/a/n1/d0;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 88
    invoke-static {p1, p3}, Lb/a/a/n1/d0;->a(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 89
    new-instance v2, Ljava/io/File;

    iget-object p3, p2, Lb/a/a/n1/d0$c;->c:Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lb/a/a/n1/d0$c;->e:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lsmartisanos/util/SidebarUtils;->dragFile(Landroid/view/View;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p2, Lb/a/a/n1/d0$c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p3, :cond_5

    if-eq p3, v6, :cond_5

    const/16 v0, 0x8

    if-eq p3, v0, :cond_5

    .line 91
    iget-object p2, p2, Lb/a/a/n1/d0$c;->b:Ljava/lang/String;

    invoke-static {p1, v1, p2, p4}, Lsmartisanos/util/SidebarUtils;->dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    .line 92
    iget-object p2, p2, Lb/a/a/n1/d0$c;->b:Ljava/lang/String;

    invoke-static {p1, v1, p2, v6}, Lsmartisanos/util/SidebarUtils;->dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 93
    :cond_6
    invoke-static {v1, p3}, Lb/a/a/n1/d0;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 94
    invoke-static {p1, p3}, Lb/a/a/n1/d0;->a(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 95
    invoke-virtual {p0, v1}, Lb/a/a/n1/d0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    iget-object p2, p2, Lb/a/a/n1/d0$c;->b:Ljava/lang/String;

    invoke-static {p1, v1, p2, p4, p3}, Lsmartisanos/util/SidebarUtils;->dragText(Landroid/view/View;Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v6, 0x0

    :cond_8
    :goto_1
    return v6
.end method
