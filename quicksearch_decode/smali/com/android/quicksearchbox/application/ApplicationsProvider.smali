.class public Lcom/android/quicksearchbox/application/ApplicationsProvider;
.super Landroid/content/ContentProvider;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/application/ApplicationsProvider$d;,
        Lcom/android/quicksearchbox/application/ApplicationsProvider$e;
    }
.end annotation


# static fields
.field public static final i:Landroid/content/UriMatcher;

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ljava/lang/Object;

.field public static n:Z


# instance fields
.field public volatile a:Z

.field public b:Landroid/database/sqlite/SQLiteDatabase;

.field public c:Landroid/os/Handler;

.field public d:Lb/a/a/d1/b/a;

.field public e:Landroid/content/BroadcastReceiver;

.field public f:Landroid/content/BroadcastReceiver;

.field public g:Landroid/content/BroadcastReceiver;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->h()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->i:Landroid/content/UriMatcher;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b(Z)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->j:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b(Z)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->k:Ljava/util/HashMap;

    .line 4
    invoke-static {}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->g()Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->l:Ljava/util/HashMap;

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->m:Ljava/lang/Object;

    .line 6
    sput-boolean v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a:Z

    .line 3
    new-instance v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider$a;-><init>(Lcom/android/quicksearchbox/application/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->e:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$b;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider$b;-><init>(Lcom/android/quicksearchbox/application/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->f:Landroid/content/BroadcastReceiver;

    .line 5
    new-instance v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$c;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider$c;-><init>(Lcom/android/quicksearchbox/application/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 132
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 133
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 134
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    const-string v2, " like \'"

    const-string v3, "%"

    if-eqz v0, :cond_4

    const-string v0, "_"

    const-string v4, "/_"

    .line 135
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/%"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "["

    const-string v4, "/["

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "]"

    const-string v4, "/]"

    .line 136
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "^"

    const-string v4, "/^"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\'"

    const-string v4, "\'\'"

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    move-object v1, v3

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%\' ESCAPE \'/\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    move-object v1, v3

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "%\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 128
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, " OR "

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_0
    aget-object v2, p2, v1

    invoke-static {v2, p0, p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/pm/ActivityInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    goto :goto_0

    :cond_1
    iget v1, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 164
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 166
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 167
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 168
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 170
    iput-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 171
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/application/ApplicationsProvider;J)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(J)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/application/ApplicationsProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AS "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/application/ApplicationsProvider;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a:Z

    return p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/application/ApplicationsProvider;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/application/ApplicationsProvider;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->g:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static b(Z)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_id"

    .line 10
    invoke-static {v0, v1, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suggest_text_1"

    const-string v2, "name"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suggest_text_2"

    const-string v2, "description"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suggest_intent_data"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suggest_intent_extra_data"

    const-string v2, "package"

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suggest_icon_1"

    const-string v2, "icon"

    .line 15
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suggest_icon_2"

    const-string v2, "NULL"

    .line 16
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "suggest_shortcut_id"

    const-string v2, "package || \'/\' || class"

    .line 17
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, "suggest_last_access_hint"

    const-string v1, "last_resume_time"

    .line 18
    invoke-static {v0, p0, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/application/ApplicationsProvider;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "_id in (  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    const-string v5, " select "

    .line 6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "appid"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "searchkey"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " where "

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "keyword"

    invoke-static {v5, v4, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eq v3, v1, :cond_0

    const-string v4, " INTERSECT"

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p0, ")"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static g()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_id"

    .line 2
    invoke-static {v0, v1, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 3
    invoke-static {v0, v1, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "icon"

    .line 4
    invoke-static {v0, v1, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, " "

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 8
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static h()Landroid/content/UriMatcher;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    const/4 v1, 0x0

    const-string v2, "applications"

    const-string v3, "search_suggest_query"

    .line 2
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "search_suggest_query/*"

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string v3, "search_suggest_shortcut"

    .line 4
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "search_suggest_shortcut/*"

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x2

    const-string v3, "search"

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "search/*"

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x3

    const-string v3, "search_t9_query"

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "search_t9_query/*"

    .line 9
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "query_all_app_package"

    const/4 v3, 0x6

    .line 10
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    .line 20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    if-eqz p4, :cond_1

    .line 21
    array-length p3, p4

    if-nez p3, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "selectionArgs not allowed for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 23
    :cond_1
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 24
    sget-object p3, Lcom/android/quicksearchbox/application/ApplicationsProvider;->i:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x1

    if-eqz p3, :cond_a

    if-eq p3, p5, :cond_8

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 p2, 0x3

    if-eq p3, p2, :cond_3

    const/4 p2, 0x6

    if-ne p3, p2, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d()Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 26
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "URL "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t support querying."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, p5, :cond_4

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    .line 29
    :cond_4
    invoke-static {}, Lb/a/a/d1/a;->a()Lb/a/a/d1/a;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, p2, p4}, Lb/a/a/d1/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 30
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p5, :cond_6

    .line 31
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 32
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p5, :cond_7

    .line 33
    invoke-virtual {p0, p2, p6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a([Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 34
    :cond_7
    :goto_1
    invoke-virtual {p0, p4, p2, p6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 35
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p5, :cond_9

    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p4

    .line 37
    :cond_9
    invoke-virtual {p0, p4, p2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 38
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p5, :cond_b

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    :cond_b
    move-object v1, p4

    const-string p3, "limit"

    .line 40
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p3, "is_pkg_name"

    .line 41
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    const-string p3, "1"

    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_2

    :cond_c
    const/4 p5, 0x0

    :goto_2
    move v5, p5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p6

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 45
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "sortOrder not allowed for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 46
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "selection not allowed for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 55
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad shortcut id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApplicationsProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance p1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {p1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "applications"

    .line 58
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->j:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v1, "package = ? AND class = ?"

    .line 60
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 62
    iget-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7

    .line 63
    sget-object v3, Lcom/android/quicksearchbox/application/ApplicationsProvider;->l:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Landroid/os/CancellationSignal;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 7

    .line 47
    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->j:Ljava/util/HashMap;

    .line 48
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->k:Ljava/util/HashMap;

    goto :goto_1

    .line 50
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 52
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    :goto_1
    move-object v3, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 54
    invoke-virtual/range {v0 .. v6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Landroid/os/CancellationSignal;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Landroid/os/CancellationSignal;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/CancellationSignal;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 85
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v4, "applications"

    .line 86
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object/from16 v4, p3

    .line 87
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 88
    invoke-static/range {p5 .. p5}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lb/a/a/n1/n;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 90
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    if-nez v2, :cond_3

    if-eqz p6, :cond_1

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package==\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" collate nocase "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lb/a/a/n1/h0;->c()Z

    move-result v4

    const-string v5, "name"

    if-eqz v4, :cond_2

    invoke-static {p1}, Lb/a/a/n1/h0;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-static {p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v5, p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    const-string v6, "alias"

    .line 94
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {p1, v4, v6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "last_resume_time > 0"

    .line 98
    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    move-object/from16 v1, p5

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->e()Z

    move-result v4

    if-nez v4, :cond_5

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Z)Ljava/lang/String;

    .line 101
    :cond_5
    iget-object v4, v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "name"

    move-object v5, p2

    move-object v11, v1

    move-object/from16 v12, p4

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 102
    invoke-static {v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "suggest_intent_extra_data"

    .line 103
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lb/a/a/n1/n;->a(Ljava/lang/String;)V

    :cond_6
    return-object v2
.end method

.method public final a(Ljava/util/Map;)Landroid/database/Cursor;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "maybe_launch_pkg_from_predict_result"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, ";"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->h:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->h:Ljava/util/Map;

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    array-length v2, v0

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    .line 72
    iget-object v4, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->h:Ljava/util/Map;

    aget-object v5, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    array-length v4, v0

    const-string v5, "\')"

    const-string v6, "package IN (\'"

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 74
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\'"

    if-nez v3, :cond_3

    .line 75
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v2, -0x1

    const-string v7, ",\'"

    if-ne v3, v6, :cond_4

    .line 76
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string v0, " AND name NOT LIKE \'Leaks\'"

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v0, "applications"

    .line 80
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 82
    iget-object v3, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 83
    new-instance v0, Lb/a/a/l1/a;

    iget-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->h:Ljava/util/Map;

    const-string v2, "suggest_intent_extra_data"

    invoke-direct {v0, p1, v2, v1}, Lb/a/a/l1/a;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final a([Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 10

    .line 105
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "applicationsLookup JOIN applications ON applicationsLookup.source = applications._id"

    .line 106
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 108
    iget-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "applications._id"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    const/4 v8, 0x0

    move-object v2, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;

    invoke-direct {v0, p0, p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider$e;-><init>(Lcom/android/quicksearchbox/application/ApplicationsProvider;Landroid/os/Looper;)V

    return-object v0
.end method

.method public final a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 3

    .line 160
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, p1, v0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 162
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-static {}, Lb/a/a/n1/h0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0, p3}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d:Lb/a/a/d1/b/a;

    invoke-virtual {v0, p3}, Lb/a/a/d1/b/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_3

    .line 119
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 120
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "\'"

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string p3, " OR "

    .line 124
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "package"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " IN ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p3, " )"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_2
    return-object p1
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "MIN(token_index) != 0, "

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "last_resume_time DESC, "

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "name"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS applications (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED,alias TEXT,description description TEXT,package TEXT,class TEXT,icon TEXT,launch_count INTEGER DEFAULT 0,last_resume_time INTEGER DEFAULT 0);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS searchkey (_id INTEGER PRIMARY KEY AUTOINCREMENT,appid INTEGER ,keyword TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsComponentIndex ON applications (package,class);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER searchkey_delete DELETE ON applications BEGIN DELETE FROM searchkey WHERE appid = old._id;END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final a(J)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pose update all delayMillis : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationsProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 12
    iput v1, v0, Landroid/os/Message;->what:I

    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 142
    invoke-static {p1}, Lb/a/a/d1/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 145
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 146
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v3, :cond_0

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/16 v6, 0x20

    if-ne v6, v5, :cond_1

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    move v6, v2

    .line 151
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 152
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    .line 153
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_5

    .line 155
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 159
    iget-object v4, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d:Lb/a/a/d1/b/a;

    invoke-virtual {v4, p1, v3, p2}, Lb/a/a/d1/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-static {}, Lb/a/a/n1/n;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/n1/n$a;

    if-eqz v2, :cond_0

    .line 5
    iget-object v3, v2, Lb/a/a/n1/n$a;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "\'"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lb/a/a/n1/n$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->d()Lcom/android/quicksearchbox/util/FuzzyTonesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/util/FuzzyTonesHelper;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    iget-object v2, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d:Lb/a/a/d1/b/a;

    invoke-virtual {v2, v1}, Lb/a/a/d1/b/a;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c()Landroid/content/pm/PackageManager;
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "applications"

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d:Lb/a/a/d1/b/a;

    invoke-virtual {p1}, Lb/a/a/d1/b/a;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "package = ?"

    invoke-virtual {v1, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d:Lb/a/a/d1/b/a;

    invoke-virtual {v0, p1}, Lb/a/a/d1/b/a;->b(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public final d()Landroid/database/Cursor;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "package"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "applications"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lb/a/a/n1/h0;->c()Z

    move-result v2

    .line 3
    new-instance v3, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v4, v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "applications"

    invoke-direct {v3, v4, v5}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v4, "name"

    .line 4
    invoke-virtual {v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "alias"

    .line 5
    invoke-virtual {v3, v5}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "description"

    .line 6
    invoke-virtual {v3, v6}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "package"

    .line 7
    invoke-virtual {v3, v7}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "class"

    .line 8
    invoke-virtual {v3, v8}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "icon"

    .line 9
    invoke-virtual {v3, v9}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "launch_count"

    .line 10
    invoke-virtual {v3, v10}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "last_resume_time"

    .line 11
    invoke-virtual {v3, v11}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 12
    new-instance v12, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v13, v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "searchkey"

    invoke-direct {v12, v13, v14}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v13, "appid"

    .line 13
    invoke-virtual {v12, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "keyword"

    .line 14
    invoke-virtual {v12, v14}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 15
    iget-object v15, v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 16
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->c(Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    move/from16 v16, v14

    const v14, 0x7f100042

    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 18
    new-instance v15, Landroid/content/Intent;

    move/from16 v17, v13

    const-string v13, "android.intent.action.MAIN"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v18, v12

    const/4 v12, 0x0

    :try_start_2
    invoke-direct {v15, v13, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v13, "android.intent.category.LAUNCHER"

    .line 19
    invoke-virtual {v15, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v15, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->c()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v13, 0x0

    .line 22
    invoke-virtual {v0, v15, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_1

    move v12, v13

    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v12, v19

    :goto_0
    if-ge v13, v12, :cond_a

    .line 24
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v20, v12

    move-object/from16 v12, v19

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 25
    invoke-virtual {v12, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v15

    .line 26
    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 27
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2

    move/from16 v19, v11

    move/from16 v22, v13

    move-object v13, v15

    goto :goto_1

    :cond_2
    move/from16 v22, v13

    move-object/from16 v13, v19

    move/from16 v19, v11

    .line 28
    :goto_1
    iget-object v11, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    move/from16 v23, v10

    .line 29
    iget-object v10, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {v0, v10}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/util/List;

    move-result-object v10

    .line 30
    invoke-virtual {v1, v13, v11}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v24, v0

    .line 31
    invoke-static {v11}, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v25, v10

    const-string v10, "\\|"

    .line 33
    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v26, v0

    array-length v0, v10

    move/from16 v27, v9

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v0, :cond_4

    move/from16 v28, v0

    aget-object v0, v10, v9

    .line 34
    invoke-virtual {v1, v0, v11}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v28

    goto :goto_2

    :cond_3
    move-object/from16 v26, v0

    move/from16 v27, v9

    move-object/from16 v25, v10

    :cond_4
    move-object/from16 v0, v26

    goto :goto_3

    :cond_5
    move-object/from16 v24, v0

    move/from16 v27, v9

    move/from16 v23, v10

    const/4 v0, 0x0

    const/16 v25, 0x0

    .line 35
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move/from16 v0, v16

    move/from16 v11, v19

    move/from16 v9, v23

    move/from16 v19, v2

    :goto_4
    move-object/from16 v2, v18

    goto/16 :goto_7

    .line 36
    :cond_6
    iget-object v9, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v9}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 38
    invoke-virtual {v3, v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    if-eqz v2, :cond_7

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 40
    invoke-virtual {v3, v5, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 41
    :cond_7
    invoke-virtual {v3, v6, v14}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 42
    invoke-virtual {v3, v7, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 43
    invoke-virtual {v3, v8, v15}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    move/from16 v0, v27

    .line 44
    invoke-virtual {v3, v0, v9}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    move/from16 v9, v23

    const/4 v10, 0x0

    .line 45
    invoke-virtual {v3, v9, v10}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    move/from16 v11, v19

    const-wide/16 v12, 0x0

    .line 46
    invoke-virtual {v3, v11, v12, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 47
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move-result-wide v12

    if-eqz v25, :cond_9

    .line 48
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_6

    .line 49
    :cond_8
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v10, v19

    check-cast v10, Ljava/lang/String;

    .line 50
    invoke-virtual/range {v18 .. v18}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v27, v0

    move/from16 v19, v2

    move/from16 v0, v17

    move-object/from16 v2, v18

    .line 51
    :try_start_3
    invoke-virtual {v2, v0, v12, v13}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    move/from16 v17, v0

    move/from16 v0, v16

    .line 52
    invoke-virtual {v2, v0, v10}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    move/from16 v16, v0

    move-object/from16 v18, v2

    move/from16 v2, v19

    move/from16 v0, v27

    const/4 v10, 0x0

    goto :goto_5

    :cond_9
    :goto_6
    move/from16 v27, v0

    move/from16 v19, v2

    move/from16 v0, v16

    goto :goto_4

    :goto_7
    add-int/lit8 v13, v22, 0x1

    move/from16 v16, v0

    move-object/from16 v18, v2

    move v10, v9

    move/from16 v2, v19

    move/from16 v12, v20

    move-object/from16 v15, v21

    move-object/from16 v0, v24

    move/from16 v9, v27

    goto/16 :goto_0

    :cond_a
    move-object/from16 v2, v18

    .line 54
    iget-object v0, v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :try_start_4
    iget-object v0, v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 56
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 57
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 58
    invoke-static {}, Lb/a/a/d1/a;->a()Lb/a/a/d1/a;

    move-result-object v0

    iget-object v2, v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lb/a/a/d1/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    sget-boolean v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->n:Z

    if-nez v0, :cond_c

    .line 60
    sget-object v2, Lcom/android/quicksearchbox/application/ApplicationsProvider;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 61
    :try_start_5
    sget-boolean v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->n:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->n:Z

    .line 63
    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 64
    :cond_b
    monitor-exit v2

    goto :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 65
    :cond_c
    :goto_8
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v12

    .line 66
    :goto_9
    :try_start_7
    iget-object v4, v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 67
    invoke-virtual {v3}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 68
    invoke-virtual {v2}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 69
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e()Z
    .locals 2

    .line 10
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.GLOBAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->i:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t support querying."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/vnd.android.application"

    return-object p1

    :cond_2
    const-string p1, "vnd.android.cursor.item/vnd.android.search.suggest"

    return-object p1

    :cond_3
    return-object v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/application/ApplicationsProvider$d;->a(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lb/a/a/d1/b/a;

    invoke-direct {v0}, Lb/a/a/d1/b/a;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->d:Lb/a/a/d1/b/a;

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a()V

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsProviderUpdater"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->c:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2710

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(J)V

    const-string v0, "ApplicationsProvider"

    const-string v1, "in setup wizard , delay init util backup finished or after 10s"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.smartisanos.backup.ACTIVE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 2
    sget-boolean v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->n:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/android/quicksearchbox/application/ApplicationsProvider;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :catch_0
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 6
    :try_start_1
    sget-object v1, Lcom/android/quicksearchbox/application/ApplicationsProvider;->m:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/quicksearchbox/application/ApplicationsProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
