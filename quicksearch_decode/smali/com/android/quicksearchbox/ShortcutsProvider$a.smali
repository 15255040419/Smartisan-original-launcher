.class public Lcom/android/quicksearchbox/ShortcutsProvider$a;
.super Ljava/lang/Object;
.source "ShortcutsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/ShortcutsProvider;->a(Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/ComponentName;

.field public final synthetic b:Landroid/content/ContentValues;

.field public final synthetic c:Lcom/android/quicksearchbox/ShortcutsProvider;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ShortcutsProvider$a;->c:Lcom/android/quicksearchbox/ShortcutsProvider;

    iput-object p2, p0, Lcom/android/quicksearchbox/ShortcutsProvider$a;->a:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/quicksearchbox/ShortcutsProvider$a;->b:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ShortcutsProvider$a;->c:Lcom/android/quicksearchbox/ShortcutsProvider;

    iget-object v1, p0, Lcom/android/quicksearchbox/ShortcutsProvider$a;->a:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/quicksearchbox/ShortcutsProvider$a;->b:Landroid/content/ContentValues;

    invoke-static {v0, v1, v2}, Lcom/android/quicksearchbox/ShortcutsProvider;->a(Lcom/android/quicksearchbox/ShortcutsProvider;Landroid/content/ComponentName;Landroid/content/ContentValues;)V

    return-void
.end method
