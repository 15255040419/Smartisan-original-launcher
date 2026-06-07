.class public Lb/a/a/h0;
.super Lb/a/a/f;
.source "SearchableSource.java"


# static fields
.field public static final k:Z

.field public static l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final e:Landroid/app/SearchableInfo;

.field public final f:Ljava/lang/String;

.field public final g:Landroid/content/pm/ActivityInfo;

.field public final h:I

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    const-string v1, "ro.debuggable"

    .line 1
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    sput-boolean v0, Lb/a/a/h0;->k:Z

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/a/h0;->m:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lb/a/a/h0;->o:Ljava/util/Map;

    .line 6
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f07023e

    const v2, 0x7f070368

    const v4, 0x7f07036b

    const v5, 0x7f07036c

    const-string v6, "com.smartisanos.appstore"

    const-string v7, "com.smartisanos.music"

    const-string v8, "com.smartisanos.notes"

    const-string v9, "com.android.calendar"

    const-string v10, "com.android.email"

    const-string v11, "com.android.mms"

    const-string v12, "com.android.settings"

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    const v2, 0x7f070203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    const v1, 0x7f070204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    const v1, 0x7f0702a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    const v2, 0x7f07036d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    const v1, 0x7f07036e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lb/a/a/h0;->l:Ljava/util/HashMap;

    const v1, 0x7f070367

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :goto_0
    sget-object v0, Lb/a/a/h0;->o:Ljava/util/Map;

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.document"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lb/a/a/h0;->o:Ljava/util/Map;

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.image"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lb/a/a/h0;->o:Ljava/util/Map;

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.video"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lb/a/a/h0;->o:Ljava/util/Map;

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.audio"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lb/a/a/h0;->o:Ljava/util/Map;

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.apk"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lb/a/a/h0;->o:Ljava/util/Map;

    const-string v1, "enable_corpus_com.smartisanos.quicksearch/com.android.quicksearchbox.tnt.file.archive"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lb/a/a/h0;->m:Ljava/util/HashMap;

    const v1, 0x7f100183

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lb/a/a/h0;->m:Ljava/util/HashMap;

    const v1, 0x7f100184

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lb/a/a/h0;->m:Ljava/util/HashMap;

    const v1, 0x7f100137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "com.smartisanos.quicksearch"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 31
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "com.smartisanos.quicksearch"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_2
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.smartisanos.filemanager"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/SearchableInfo;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lb/a/a/f;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    const/4 p3, 0x0

    .line 2
    iput-object p3, p0, Lb/a/a/h0;->i:Ljava/lang/CharSequence;

    .line 3
    iput-object p3, p0, Lb/a/a/h0;->j:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p3

    .line 5
    sget-boolean p4, Lb/a/a/h0;->k:Z

    if-eqz p4, :cond_0

    .line 6
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "created Searchable for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "QSB.SearchableSource"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iput-object p2, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    .line 8
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lb/a/a/h0;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    iput-object p4, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    .line 11
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 12
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput p1, p0, Lb/a/a/h0;->h:I

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 57
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 59
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    const-string p1, "search_suggest_shortcut"

    .line 63
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "suggest_intent_extra_data"

    .line 65
    invoke-virtual {v0, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 67
    sget-boolean p1, Lb/a/a/h0;->k:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Requesting refresh "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QSB.SearchableSource"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/app/SearchableInfo;I)Landroid/net/Uri;
    .locals 4

    const-class v0, Lb/a/a/h0;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 18
    monitor-exit v0

    return-object v1

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 20
    monitor-exit v0

    return-object v1

    .line 21
    :cond_1
    :try_start_1
    invoke-static {p1, v2}, Lb/a/a/h0;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 23
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 26
    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    const-string p0, "search_t9_query"

    .line 27
    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_3
    const-string p0, "search_suggest_query"

    .line 28
    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "com.android.contacts"

    .line 31
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "contacts_t9_search"

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 15

    move-object/from16 v0, p3

    move/from16 v1, p5

    .line 32
    invoke-static/range {p4 .. p4}, Lb/a/a/h0;->c(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lb/a/a/n1/n;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {}, Lb/a/a/n1/n;->c()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    invoke-static/range {p2 .. p2}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$a;->a(Landroid/app/SearchableInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    move-object/from16 v2, p2

    .line 35
    invoke-static {v2, v1}, Lb/a/a/h0;->a(Landroid/app/SearchableInfo;I)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v3

    .line 36
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v8, :cond_2

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v2

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :goto_0
    move-object v9, v3

    .line 39
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "limit"

    invoke-virtual {v4, v6, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 41
    sget-boolean v3, Lb/a/a/h0;->k:Z

    const-string v4, "QSB.SearchableSource"

    if-eqz v3, :cond_3

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",null,"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",null)"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "content://com.smartisanos.appstore.SuggestionsProvider"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 46
    invoke-static {}, Lcom/android/quicksearchbox/network/QsbHttpManager;->c()Lcom/android/quicksearchbox/network/QsbHttpManager;

    move-result-object v3

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    move-object/from16 v1, p1

    move v2, v5

    goto :goto_1

    :cond_4
    move-object/from16 v1, p1

    :goto_1
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/quicksearchbox/network/QsbHttpManager;->a(Ljava/lang/String;Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object/from16 v1, p1

    .line 47
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.quicksearchbox.qsb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 48
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    .line 49
    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "access_suggestion"

    .line 51
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "suggest_text_1"

    const-string v8, "suggest_text_2"

    const-string v9, "suggest_icon_1"

    const-string v10, "suggest_intent_action"

    const-string v11, "suggest_intent_data"

    const-string v12, "mime_type"

    const-string v13, "suggest_intent_extra_data"

    const-string v14, "suggest_access_time"

    .line 52
    filled-new-array/range {v7 .. v14}, [Ljava/lang/String;

    move-result-object v7

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suggest_text_1 LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "suggest_access_time DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    .line 55
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 56
    :goto_2
    sget-boolean v1, Lb/a/a/h0;->k:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got cursor from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    iget-object v3, v2, Lb/a/a/h0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object v2, p0

    :goto_3
    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lb/a/a/h0;->b(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 12

    .line 1
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const-string v1, "QSB.SearchableSource"

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/h0;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has bad suggestion authority "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5
    :cond_0
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    return v4

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    .line 7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 8
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_2

    return v4

    .line 9
    :cond_2
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const-string v7, "Missing "

    if-eqz v0, :cond_7

    .line 10
    array-length v8, v0

    if-nez v8, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 12
    array-length v8, v0

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_5

    aget-object v10, v0, v9

    .line 13
    invoke-virtual {v10}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 14
    invoke-virtual {v10, p1}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 15
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v11, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    if-nez v10, :cond_4

    return v4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 16
    :cond_5
    sget-boolean p1, Lb/a/a/h0;->k:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and no path permission applies"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    .line 17
    :cond_7
    :goto_1
    sget-boolean p1, Lb/a/a/h0;->k:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v2
.end method

.method public final b(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 8

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 5
    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v3, "app_data"

    .line 7
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 9
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    iget-object v3, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v3

    invoke-virtual {p0, v3}, Lb/a/a/h0;->a(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "free_form"

    .line 11
    :cond_1
    iget-object v4, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v4

    invoke-virtual {p0, v4}, Lb/a/a/h0;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 12
    iget-object v5, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v5

    invoke-virtual {p0, v5}, Lb/a/a/h0;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v6, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v6}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v6

    if-gtz v6, :cond_2

    const/4 v6, 0x1

    :cond_2
    const-string v7, "android.speech.extra.LANGUAGE_MODEL"

    .line 14
    invoke-virtual {p1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.speech.extra.PROMPT"

    .line 15
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE"

    .line 16
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.speech.extra.MAX_RESULTS"

    .line 17
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 18
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "calling_package"

    .line 19
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 21
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public canRead()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 3
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    const-string v1, "search_suggest_query"

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lb/a/a/h0;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lb/a/a/f;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lb/a/a/h0;->b(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/app/SearchableInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    return v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb/a/a/h0;->f()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIntentAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "android.intent.action.SEARCH"

    return-object v0
.end method

.method public getDefaultIntentData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/h0;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIntentComponent()Landroid/content/ComponentName;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3
    sget-object v1, Lb/a/a/h0;->m:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lb/a/a/h0;->m:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/h0;->i:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/h0;->i:Ljava/lang/CharSequence;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lb/a/a/h0;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxDisplay()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2
    sget-object v1, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lb/a/a/h0;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-super {p0}, Lb/a/a/f;->getMaxDisplay()I

    move-result v0

    return v0
.end method

.method public getMaxShortcuts(Lb/a/a/m;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/h0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/m;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryThreshold()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v0

    return v0
.end method

.method public getSettingsDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSettingsDescriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/h0;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSourceIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->j:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3
    sget-object v2, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lb/a/a/h0;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lb/a/a/h0;->j:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public getSourceIconUri()Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2
    sget-object v1, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lb/a/a/h0;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lb/a/a/h0;->f()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070103

    invoke-static {v0, v1}, Lb/a/a/n1/h0;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/h0;->g:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v2, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestUri()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/a/a/h0;->a(Landroid/app/SearchableInfo;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;
    .locals 7

    const-string p3, "["

    const-string v0, "QSB.SearchableSource"

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lb/a/a/h0;->a(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object p2

    .line 3
    sget-boolean p4, Lb/a/a/h0;->k:Z

    if-eqz p4, :cond_0

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] returned."

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance p4, Lb/a/a/n;

    invoke-direct {p4, p0, p1, p2}, Lb/a/a/n;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p2

    .line 5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] failed"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    new-instance p2, Lb/a/a/n;

    invoke-direct {p2, p0, p1}, Lb/a/a/n;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/h0;->getSuggestions(Ljava/lang/String;IZI)Lcom/android/quicksearchbox/SourceResult;

    move-result-object p1

    return-object p1
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/h0;->h:I

    return v0
.end method

.method public includeInAll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->queryAfterZeroResults()Z

    move-result v0

    return v0
.end method

.method public refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 6

    const-string v0, "["

    const-string v1, "QSB.SearchableSource"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/f;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-static {v3, v4, p1, p2}, Lb/a/a/h0;->a(Landroid/content/Context;Landroid/app/SearchableInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    sget-boolean v3, Lb/a/a/h0;->k:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] returned."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5
    :cond_1
    new-instance v3, Lb/a/a/n;

    invoke-direct {v3, p0, v2, p2}, Lb/a/a/n;-><init>(Lcom/android/quicksearchbox/Source;Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object p2, v2

    .line 6
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/f;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] failed"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_2

    .line 7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2
.end method

.method public voiceSearchEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/h0;->e:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    return v0
.end method
