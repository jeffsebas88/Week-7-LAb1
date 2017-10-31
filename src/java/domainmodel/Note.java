/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package domainmodel;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author 733196
 */
public class Note implements Serializable{
    
    private int noteID;
    private Date dateCreated;
    private String content;

    public Note(int noteID, Date dateCreated, String content) {
        this.noteID = noteID;
        this.dateCreated = dateCreated;
        this.content = content;
    }
    
    public Note(int noteID, String contents){
        this.noteID = noteID;
        this.content = contents;
        this.dateCreated = new Date();
    }
    
    public Note(String contents, Date date){
        this.content = contents;
        this.dateCreated = date;
    }

    public int getNoteID() {
        return noteID;
    }

    public void setNoteID(int noteID) {
        this.noteID = noteID;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
    
    
}
