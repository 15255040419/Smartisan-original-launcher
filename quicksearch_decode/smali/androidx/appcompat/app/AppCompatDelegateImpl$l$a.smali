.class public Landroidx/appcompat/app/AppCompatDelegateImpl$l$a;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$l;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$l$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$l;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$l;->b()V

    return-void
.end method
