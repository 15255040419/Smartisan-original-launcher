.class public final Lb/a/a/n1/d$q;
.super Ljava/lang/Object;
.source "AgentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "q"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 4

    .line 3
    invoke-static {p0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    check-cast v0, Lb/a/a/e0;

    .line 5
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    .line 8
    invoke-virtual {v0, v2}, Lb/a/a/e0;->d(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v2}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic a(Landroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lb/a/a/n1/d$q;->b(Landroid/content/Context;J)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 2
    new-instance v0, Lb/a/a/n1/d$q$a;

    invoke-direct {v0, p0}, Lb/a/a/n1/d$q$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    .line 3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lb/a/a/t;->a:Landroid/net/Uri;

    const-string p0, "tone_1"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 8
    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_time_agent_setting"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static c(Landroid/content/Context;)J
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_time_agent_setting"

    const-wide/16 v1, 0x0

    .line 2
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lb/a/a/n1/d$q;->c(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lb/a/a/n1/d$q;->a(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "allow_search"

    .line 6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "blur_list"

    .line 7
    invoke-static {p0}, Lb/a/a/n1/d$q;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "blur"

    .line 8
    invoke-static {p0}, Lb/a/a/n1/h0;->i(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "contact_search"

    .line 9
    invoke-static {p0}, Lb/a/a/n1/h0;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/Throwable;)V

    .line 11
    :goto_2
    new-instance v0, Lb/a/a/n1/d$q$b;

    invoke-direct {v0, v1, p0}, Lb/a/a/n1/d$q$b;-><init>(Lorg/json/JSONObject;Landroid/content/Context;)V

    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method
