.class public final Lb/a/a/n1/d$t$a;
.super Ljava/lang/Object;
.source "AgentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/d$t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/d$t$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/a/a/n1/d$t$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/a/a/n1/d$t$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lb/a/a/n1/d$t$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lb/a/a/n1/d$t$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lb/a/a/n1/d$t$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lb/a/a/n1/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
