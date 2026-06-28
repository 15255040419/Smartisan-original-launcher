.class Lcom/android/vcard/VCardEntry$ToStringIterator;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToStringIterator"
.end annotation


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mFirstElement:Z

.field final synthetic this$0:Lcom/android/vcard/VCardEntry;


# direct methods
.method private constructor <init>(Lcom/android/vcard/VCardEntry;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vcard/VCardEntry;Lcom/android/vcard/VCardEntry$1;)V
    .locals 0

    .line 1668
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardEntry$ToStringIterator;-><init>(Lcom/android/vcard/VCardEntry;)V

    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2

    .line 1687
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    if-nez v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 1689
    iput-boolean v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    .line 1691
    :cond_0
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0
.end method

.method public onElementGroupEnded()V
    .locals 1

    .line 1697
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 2

    .line 1681
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry$EntryLabel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 1682
    iput-boolean p1, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mFirstElement:Z

    return-void
.end method

.method public onIterationEnded()V
    .locals 1

    .line 1702
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v0, "]]\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onIterationStarted()V
    .locals 3

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    .line 1676
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->this$0:Lcom/android/vcard/VCardEntry;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1707
    iget-object p0, p0, Lcom/android/vcard/VCardEntry$ToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
