.class public Lb/a/a/h1/a$c;
.super Landroid/content/BroadcastReceiver;
.source "MusicServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/h1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/h1/a;


# direct methods
.method public constructor <init>(Lb/a/a/h1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/h1/a$c;->a:Lb/a/a/h1/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/h1/a;Lb/a/a/h1/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/h1/a$c;-><init>(Lb/a/a/h1/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Music state receive, action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lb/a/a/h1/a$c;->a:Lb/a/a/h1/a;

    invoke-static {p1}, Lb/a/a/h1/a;->f(Lb/a/a/h1/a;)V

    return-void
.end method
