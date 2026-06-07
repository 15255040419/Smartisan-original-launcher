.class public final Lb/a/a/n1/d$s$a;
.super Ljava/lang/Object;
.source "AgentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/d$s;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/d$s$a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lb/a/a/n1/d$s$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/n1/d$s$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lb/a/a/n1/d$s;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/n1/d$s$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v1, p0, Lb/a/a/n1/d$s$a;->b:Z

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "searchable_items_on_off"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "A170069"

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/a/n1/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
