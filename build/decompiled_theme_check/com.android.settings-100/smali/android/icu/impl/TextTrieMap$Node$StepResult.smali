.class public Landroid/icu/impl/TextTrieMap$Node$StepResult;
.super Ljava/lang/Object;
.source "TextTrieMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap$Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StepResult"
.end annotation


# instance fields
.field public node:Landroid/icu/impl/TextTrieMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "TV;>.Node;"
        }
    .end annotation
.end field

.field public offset:I

.field final synthetic this$1:Landroid/icu/impl/TextTrieMap$Node;


# direct methods
.method public constructor <init>(Landroid/icu/impl/TextTrieMap$Node;)V
    .locals 0

    .line 372
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$Node$StepResult;->this$1:Landroid/icu/impl/TextTrieMap$Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
