.class public La/a/e/h/m$a;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/e/h/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/e/h/m;


# direct methods
.method public constructor <init>(La/a/e/h/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/m$a;->a:La/a/e/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/m$a;->a:La/a/e/h/m;

    invoke-virtual {v0}, La/a/e/h/m;->d()V

    return-void
.end method
