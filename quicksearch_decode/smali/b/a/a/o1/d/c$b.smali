.class public Lb/a/a/o1/d/c$b;
.super Ljava/lang/Object;
.source "ViewHolderContact.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/o1/d/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/o1/d/c;


# direct methods
.method public constructor <init>(Lb/a/a/o1/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/o1/d/c$b;->a:Lb/a/a/o1/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lb/a/a/o1/d/c$b;->a:Lb/a/a/o1/d/c;

    iget-object p1, p1, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const-string v0, "clipboard"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 3
    new-instance v0, Landroid/content/ClipData$Item;

    iget-object v1, p0, Lb/a/a/o1/d/c$b;->a:Lb/a/a/o1/d/c;

    invoke-static {v1}, Lb/a/a/o1/d/c;->b(Lb/a/a/o1/d/c;)Lb/a/a/o1/b/b;

    move-result-object v1

    iget-object v1, v1, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v1, v1, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v1, Landroid/content/ClipData;

    iget-object v2, p0, Lb/a/a/o1/d/c$b;->a:Lb/a/a/o1/d/c;

    invoke-static {v2}, Lb/a/a/o1/d/c;->b(Lb/a/a/o1/d/c;)Lb/a/a/o1/b/b;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    iget-object v2, v2, Lsmartisanos/app/voiceassistant/ContactStruct;->phoneNumber:Ljava/lang/String;

    const-string v3, "text/uri-list"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 6
    iget-object p1, p0, Lb/a/a/o1/d/c$b;->a:Lb/a/a/o1/d/c;

    iget-object p1, p1, Lb/a/a/o1/d/a;->b:Landroid/content/Context;

    const v0, 0x7f10019b

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
