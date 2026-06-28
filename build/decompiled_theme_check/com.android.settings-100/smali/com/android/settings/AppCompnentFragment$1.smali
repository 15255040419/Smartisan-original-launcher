.class final Lcom/android/settings/AppCompnentFragment$1;
.super Ljava/lang/Object;
.source "AppCompnentFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppCompnentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AppCompnentFragment$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;)I
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/AppCompnentFragment$1;->collator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 137
    check-cast p1, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;

    check-cast p2, Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AppCompnentFragment$1;->compare(Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;Lcom/android/settings/AppCompnentFragment$MyApplicationInfo;)I

    move-result p0

    return p0
.end method
