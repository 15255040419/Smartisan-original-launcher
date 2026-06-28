.class public interface abstract Lcom/android/vcard/VCardEntry$EntryElement;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntryElement"
.end annotation


# virtual methods
.method public abstract constructInsertOperation(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
.end method

.method public abstract isEmpty()Z
.end method
