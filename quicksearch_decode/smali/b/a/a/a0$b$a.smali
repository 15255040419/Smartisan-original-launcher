.class public Lb/a/a/a0$b$a;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a0$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Lb/a/a/a0$b;


# direct methods
.method public constructor <init>(Lb/a/a/a0$b;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/a0$b$a;->b:Lb/a/a/a0$b;

    iput-object p2, p0, Lb/a/a/a0$b$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/a/a0$b$a;->b:Lb/a/a/a0$b;

    iget-object v1, p0, Lb/a/a/a0$b$a;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lb/a/a/a0$b;->a(Lb/a/a/a0$b;Ljava/lang/Object;)V

    return-void
.end method
